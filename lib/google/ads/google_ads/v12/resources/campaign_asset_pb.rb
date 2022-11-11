# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v12/resources/campaign_asset.proto

require 'google/protobuf'

require 'google/ads/google_ads/v12/enums/asset_field_type_pb'
require 'google/ads/google_ads/v12/enums/asset_link_status_pb'
require 'google/ads/google_ads/v12/enums/asset_source_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v12/resources/campaign_asset.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v12.resources.CampaignAsset" do
      optional :resource_name, :string, 1
      proto3_optional :campaign, :string, 6
      proto3_optional :asset, :string, 7
      optional :field_type, :enum, 4, "google.ads.googleads.v12.enums.AssetFieldTypeEnum.AssetFieldType"
      optional :source, :enum, 8, "google.ads.googleads.v12.enums.AssetSourceEnum.AssetSource"
      optional :status, :enum, 5, "google.ads.googleads.v12.enums.AssetLinkStatusEnum.AssetLinkStatus"
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V12
        module Resources
          CampaignAsset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v12.resources.CampaignAsset").msgclass
        end
      end
    end
  end
end