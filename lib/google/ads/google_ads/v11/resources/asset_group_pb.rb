# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v11/resources/asset_group.proto

require 'google/protobuf'

require 'google/ads/google_ads/v11/enums/asset_group_status_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v11/resources/asset_group.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v11.resources.AssetGroup" do
      optional :resource_name, :string, 1
      optional :id, :int64, 9
      optional :campaign, :string, 2
      optional :name, :string, 3
      repeated :final_urls, :string, 4
      repeated :final_mobile_urls, :string, 5
      optional :status, :enum, 6, "google.ads.googleads.v11.enums.AssetGroupStatusEnum.AssetGroupStatus"
      optional :path1, :string, 7
      optional :path2, :string, 8
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V11
        module Resources
          AssetGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v11.resources.AssetGroup").msgclass
        end
      end
    end
  end
end