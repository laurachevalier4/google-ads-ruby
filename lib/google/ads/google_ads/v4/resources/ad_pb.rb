# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v4/resources/ad.proto

require 'google/protobuf'

require 'google/ads/google_ads/v4/common/ad_type_infos_pb'
require 'google/ads/google_ads/v4/common/custom_parameter_pb'
require 'google/ads/google_ads/v4/common/final_app_url_pb'
require 'google/ads/google_ads/v4/common/url_collection_pb'
require 'google/ads/google_ads/v4/enums/ad_type_pb'
require 'google/ads/google_ads/v4/enums/device_pb'
require 'google/ads/google_ads/v4/enums/system_managed_entity_source_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v4.resources.Ad" do
    optional :resource_name, :string, 37
    optional :id, :message, 1, "google.protobuf.Int64Value"
    repeated :final_urls, :message, 2, "google.protobuf.StringValue"
    repeated :final_app_urls, :message, 35, "google.ads.googleads.v4.common.FinalAppUrl"
    repeated :final_mobile_urls, :message, 16, "google.protobuf.StringValue"
    optional :tracking_url_template, :message, 12, "google.protobuf.StringValue"
    optional :final_url_suffix, :message, 38, "google.protobuf.StringValue"
    repeated :url_custom_parameters, :message, 10, "google.ads.googleads.v4.common.CustomParameter"
    optional :display_url, :message, 4, "google.protobuf.StringValue"
    optional :type, :enum, 5, "google.ads.googleads.v4.enums.AdTypeEnum.AdType"
    optional :added_by_google_ads, :message, 19, "google.protobuf.BoolValue"
    optional :device_preference, :enum, 20, "google.ads.googleads.v4.enums.DeviceEnum.Device"
    repeated :url_collections, :message, 26, "google.ads.googleads.v4.common.UrlCollection"
    optional :name, :message, 23, "google.protobuf.StringValue"
    optional :system_managed_resource_source, :enum, 27, "google.ads.googleads.v4.enums.SystemManagedResourceSourceEnum.SystemManagedResourceSource"
    oneof :ad_data do
      optional :text_ad, :message, 6, "google.ads.googleads.v4.common.TextAdInfo"
      optional :expanded_text_ad, :message, 7, "google.ads.googleads.v4.common.ExpandedTextAdInfo"
      optional :call_only_ad, :message, 13, "google.ads.googleads.v4.common.CallOnlyAdInfo"
      optional :expanded_dynamic_search_ad, :message, 14, "google.ads.googleads.v4.common.ExpandedDynamicSearchAdInfo"
      optional :hotel_ad, :message, 15, "google.ads.googleads.v4.common.HotelAdInfo"
      optional :shopping_smart_ad, :message, 17, "google.ads.googleads.v4.common.ShoppingSmartAdInfo"
      optional :shopping_product_ad, :message, 18, "google.ads.googleads.v4.common.ShoppingProductAdInfo"
      optional :gmail_ad, :message, 21, "google.ads.googleads.v4.common.GmailAdInfo"
      optional :image_ad, :message, 22, "google.ads.googleads.v4.common.ImageAdInfo"
      optional :video_ad, :message, 24, "google.ads.googleads.v4.common.VideoAdInfo"
      optional :responsive_search_ad, :message, 25, "google.ads.googleads.v4.common.ResponsiveSearchAdInfo"
      optional :legacy_responsive_display_ad, :message, 28, "google.ads.googleads.v4.common.LegacyResponsiveDisplayAdInfo"
      optional :app_ad, :message, 29, "google.ads.googleads.v4.common.AppAdInfo"
      optional :legacy_app_install_ad, :message, 30, "google.ads.googleads.v4.common.LegacyAppInstallAdInfo"
      optional :responsive_display_ad, :message, 31, "google.ads.googleads.v4.common.ResponsiveDisplayAdInfo"
      optional :local_ad, :message, 32, "google.ads.googleads.v4.common.LocalAdInfo"
      optional :display_upload_ad, :message, 33, "google.ads.googleads.v4.common.DisplayUploadAdInfo"
      optional :app_engagement_ad, :message, 34, "google.ads.googleads.v4.common.AppEngagementAdInfo"
      optional :shopping_comparison_listing_ad, :message, 36, "google.ads.googleads.v4.common.ShoppingComparisonListingAdInfo"
    end
  end
end

module Google::Ads::GoogleAds::V4::Resources
  Ad = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v4.resources.Ad").msgclass
end