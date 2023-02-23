# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v13/resources/campaign_criterion.proto

require 'google/protobuf'

require 'google/ads/google_ads/v13/common/criteria_pb'
require 'google/ads/google_ads/v13/enums/campaign_criterion_status_pb'
require 'google/ads/google_ads/v13/enums/criterion_type_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v13/resources/campaign_criterion.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v13.resources.CampaignCriterion" do
      optional :resource_name, :string, 1
      proto3_optional :campaign, :string, 37
      proto3_optional :criterion_id, :int64, 38
      optional :display_name, :string, 43
      proto3_optional :bid_modifier, :float, 39
      proto3_optional :negative, :bool, 40
      optional :type, :enum, 6, "google.ads.googleads.v13.enums.CriterionTypeEnum.CriterionType"
      optional :status, :enum, 35, "google.ads.googleads.v13.enums.CampaignCriterionStatusEnum.CampaignCriterionStatus"
      oneof :criterion do
        optional :keyword, :message, 8, "google.ads.googleads.v13.common.KeywordInfo"
        optional :placement, :message, 9, "google.ads.googleads.v13.common.PlacementInfo"
        optional :mobile_app_category, :message, 10, "google.ads.googleads.v13.common.MobileAppCategoryInfo"
        optional :mobile_application, :message, 11, "google.ads.googleads.v13.common.MobileApplicationInfo"
        optional :location, :message, 12, "google.ads.googleads.v13.common.LocationInfo"
        optional :device, :message, 13, "google.ads.googleads.v13.common.DeviceInfo"
        optional :ad_schedule, :message, 15, "google.ads.googleads.v13.common.AdScheduleInfo"
        optional :age_range, :message, 16, "google.ads.googleads.v13.common.AgeRangeInfo"
        optional :gender, :message, 17, "google.ads.googleads.v13.common.GenderInfo"
        optional :income_range, :message, 18, "google.ads.googleads.v13.common.IncomeRangeInfo"
        optional :parental_status, :message, 19, "google.ads.googleads.v13.common.ParentalStatusInfo"
        optional :user_list, :message, 22, "google.ads.googleads.v13.common.UserListInfo"
        optional :youtube_video, :message, 20, "google.ads.googleads.v13.common.YouTubeVideoInfo"
        optional :youtube_channel, :message, 21, "google.ads.googleads.v13.common.YouTubeChannelInfo"
        optional :proximity, :message, 23, "google.ads.googleads.v13.common.ProximityInfo"
        optional :topic, :message, 24, "google.ads.googleads.v13.common.TopicInfo"
        optional :listing_scope, :message, 25, "google.ads.googleads.v13.common.ListingScopeInfo"
        optional :language, :message, 26, "google.ads.googleads.v13.common.LanguageInfo"
        optional :ip_block, :message, 27, "google.ads.googleads.v13.common.IpBlockInfo"
        optional :content_label, :message, 28, "google.ads.googleads.v13.common.ContentLabelInfo"
        optional :carrier, :message, 29, "google.ads.googleads.v13.common.CarrierInfo"
        optional :user_interest, :message, 30, "google.ads.googleads.v13.common.UserInterestInfo"
        optional :webpage, :message, 31, "google.ads.googleads.v13.common.WebpageInfo"
        optional :operating_system_version, :message, 32, "google.ads.googleads.v13.common.OperatingSystemVersionInfo"
        optional :mobile_device, :message, 33, "google.ads.googleads.v13.common.MobileDeviceInfo"
        optional :location_group, :message, 34, "google.ads.googleads.v13.common.LocationGroupInfo"
        optional :custom_affinity, :message, 36, "google.ads.googleads.v13.common.CustomAffinityInfo"
        optional :custom_audience, :message, 41, "google.ads.googleads.v13.common.CustomAudienceInfo"
        optional :combined_audience, :message, 42, "google.ads.googleads.v13.common.CombinedAudienceInfo"
        optional :keyword_theme, :message, 45, "google.ads.googleads.v13.common.KeywordThemeInfo"
        optional :local_service_id, :message, 46, "google.ads.googleads.v13.common.LocalServiceIdInfo"
      end
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V13
        module Resources
          CampaignCriterion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v13.resources.CampaignCriterion").msgclass
        end
      end
    end
  end
end