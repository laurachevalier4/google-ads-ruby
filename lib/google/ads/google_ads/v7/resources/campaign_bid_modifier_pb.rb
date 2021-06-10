# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v7/resources/campaign_bid_modifier.proto

require 'google/protobuf'

require 'google/ads/google_ads/v7/common/criteria_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v7/resources/campaign_bid_modifier.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v7.resources.CampaignBidModifier" do
      optional :resource_name, :string, 1
      proto3_optional :campaign, :string, 6
      proto3_optional :criterion_id, :int64, 7
      proto3_optional :bid_modifier, :double, 8
      oneof :criterion do
        optional :interaction_type, :message, 5, "google.ads.googleads.v7.common.InteractionTypeInfo"
      end
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V7
        module Resources
          CampaignBidModifier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.resources.CampaignBidModifier").msgclass
        end
      end
    end
  end
end