# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v4/resources/click_view.proto

require 'google/protobuf'

require 'google/ads/google_ads/v4/common/click_location_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v4.resources.ClickView" do
    optional :resource_name, :string, 1
    optional :gclid, :message, 2, "google.protobuf.StringValue"
    optional :area_of_interest, :message, 3, "google.ads.googleads.v4.common.ClickLocation"
    optional :location_of_presence, :message, 4, "google.ads.googleads.v4.common.ClickLocation"
    optional :page_number, :message, 5, "google.protobuf.Int64Value"
    optional :ad_group_ad, :message, 7, "google.protobuf.StringValue"
  end
end

module Google::Ads::GoogleAds::V4::Resources
  ClickView = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v4.resources.ClickView").msgclass
end