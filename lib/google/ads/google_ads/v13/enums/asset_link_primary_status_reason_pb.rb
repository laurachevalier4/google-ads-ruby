# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v13/enums/asset_link_primary_status_reason.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v13/enums/asset_link_primary_status_reason.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v13.enums.AssetLinkPrimaryStatusReasonEnum" do
    end
    add_enum "google.ads.googleads.v13.enums.AssetLinkPrimaryStatusReasonEnum.AssetLinkPrimaryStatusReason" do
      value :UNSPECIFIED, 0
      value :UNKNOWN, 1
      value :ASSET_LINK_PAUSED, 2
      value :ASSET_LINK_REMOVED, 3
      value :ASSET_DISAPPROVED, 4
      value :ASSET_UNDER_REVIEW, 5
      value :ASSET_APPROVED_LABELED, 6
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V13
        module Enums
          AssetLinkPrimaryStatusReasonEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v13.enums.AssetLinkPrimaryStatusReasonEnum").msgclass
          AssetLinkPrimaryStatusReasonEnum::AssetLinkPrimaryStatusReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v13.enums.AssetLinkPrimaryStatusReasonEnum.AssetLinkPrimaryStatusReason").enummodule
        end
      end
    end
  end
end
