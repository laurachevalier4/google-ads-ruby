# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v3/enums/bidding_source.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v3.enums.BiddingSourceEnum" do
  end
  add_enum "google.ads.googleads.v3.enums.BiddingSourceEnum.BiddingSource" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
    value :CAMPAIGN_BIDDING_STRATEGY, 5
    value :AD_GROUP, 6
    value :AD_GROUP_CRITERION, 7
  end
end

module Google::Ads::GoogleAds::V3::Enums
  BiddingSourceEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.enums.BiddingSourceEnum").msgclass
  BiddingSourceEnum::BiddingSource = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.enums.BiddingSourceEnum.BiddingSource").enummodule
end