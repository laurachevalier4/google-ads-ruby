# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v0/enums/campaign_status.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v0.enums.CampaignStatusEnum" do
  end
  add_enum "google.ads.googleads.v0.enums.CampaignStatusEnum.CampaignStatus" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
    value :ENABLED, 2
    value :PAUSED, 3
    value :REMOVED, 4
  end
end

module Google::Ads::GoogleAds::V0::Enums
  CampaignStatusEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v0.enums.CampaignStatusEnum").msgclass
  CampaignStatusEnum::CampaignStatus = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v0.enums.CampaignStatusEnum.CampaignStatus").enummodule
end