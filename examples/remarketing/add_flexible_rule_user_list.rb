#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Creates a rule-based user list defined by a combination of rules for users who
# have visited two different pages of a website.

require 'optparse'
require 'google/ads/google_ads'
require 'date'

# [START add_combined_rule_user_list]
def add_combined_rule_user_list(customer_id)
  # GoogleAdsClient will read a config file from
  # ENV['HOME']/google_ads_config.rb when called without parameters
  client = Google::Ads::GoogleAds::GoogleAdsClient.new

  user_visited_site1_rule_info = create_user_list_rule_info_from_url(
    client,
    'http://example.com/example1',
  )
  user_visited_site2_rule_info = create_user_list_rule_info_from_url(
    client,
    'http://example.com/example2',
  )
  user_visited_site3_rule_info = create_user_list_rule_info_from_url(
    client,
    'http://example.com/example3',
  )

  # Creates a user list.
  operation = client.operation.create_resource.user_list do |u|
    u.name = "Flexible rule user list for example.com ##{(Time.new.to_f * 1000).to_i}"
    u.description = "Visitors of both http://example.com/example1 AND " \
      "http://example.com/example2 but NOT http://example.com/example3"
    u.membership_status = :OPEN
    u.membership_life_span = 365
    # Defines a representation of a user list that is generated by a rule.
    u.rule_based_user_list = client.resource.rule_based_user_list_info do |r|
      # Optional: To include past users in the user list, set the
      # prepopulation_status to REQUESTED.
      r.prepopulation_status = :REQUESTED
      r.flexible_rule_user_list = client.resource.flexible_rule_user_list_info do |frul|
        frul.inclusive_rule_operator = :AND
        frul.inclusive_operands += [
          client.resource.flexible_rule_operand_info do |froi|
            froi.rule = user_visited_site1_rule_info
            # Optionally add a lookback window for this rule, in days.
            froi.lookback_window_days = 7
          end,
          client.resource.flexible_rule_operand_info do |froi|
            froi.rule = user_visited_site2_rule_info
            # Optionally add a lookback window for this rule, in days.
            froi.lookback_window_days = 7
          end,
        ]
        frul.exclusive_operands << client.resource.flexible_rule_operand_info do |froi|
          froi.rule = user_visited_site3_rule_info
        end
      end
    end
  end

  # Issues a mutate request to add the user list and prints some information.
  response = client.service.user_list.mutate_user_lists(
    customer_id: customer_id,
    operations: [operation],
  )

  puts "Created user list with resource name " \
    "#{response.results.first.resource_name}"
end
# [END add_combined_rule_user_list]

def create_user_list_rule_info_from_url(client, url)
  client.resource.user_list_rule_info do |rule|
    rule.rule_item_groups << client.resource.user_list_rule_item_group_info do |group|
      group.rule_items << client.resource.user_list_rule_item_info do |item|
        item.name = URL_STRING
        item.string_rule_item = client.resource.user_list_string_rule_item_info do |string|
          string.operator = :EQUALS
          string.value = url
        end
      end
    end
  end
end

if __FILE__ == $0
  URL_STRING = "url__"

  options = {}

  # Running the example with -h will print the command line usage.

  OptionParser.new do |opts|
    opts.banner = sprintf('Usage: %s [options]', File.basename(__FILE__))

    opts.separator ''
    opts.separator 'Options:'

    opts.on('-C', '--customer-id CUSTOMER-ID', String, 'Customer ID') do |v|
      options[:customer_id] = v
    end

    opts.separator ''
    opts.separator 'Help:'

    opts.on_tail('-h', '--help', 'Show this message') do
      puts opts
      exit
    end
  end.parse!

  begin
    add_combined_rule_user_list(options.fetch(:customer_id).tr("-", ""))
  rescue Google::Ads::GoogleAds::Errors::GoogleAdsError => e
    e.failure.errors.each do |error|
      STDERR.printf("Error with message: %s\n", error.message)
      if error.location
        error.location.field_path_elements.each do |field_path_element|
          STDERR.printf("\tOn field: %s\n", field_path_element.field_name)
        end
      end
      error.error_code.to_h.each do |k, v|
        next if v == :UNSPECIFIED
        STDERR.printf("\tType: %s\n\tCode: %s\n", k, v)
      end
    end
    raise
  end
end