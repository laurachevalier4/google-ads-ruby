# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v10/resources/billing_setup.proto

require 'google/ads/google_ads/v10/enums/billing_setup_status_pb'
require 'google/ads/google_ads/v10/enums/time_type_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v10/resources/billing_setup.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v10.resources.BillingSetup" do
      optional :resource_name, :string, 1
      proto3_optional :id, :int64, 15
      optional :status, :enum, 3, "google.ads.googleads.v10.enums.BillingSetupStatusEnum.BillingSetupStatus"
      proto3_optional :payments_account, :string, 18
      optional :payments_account_info, :message, 12, "google.ads.googleads.v10.resources.BillingSetup.PaymentsAccountInfo"
      oneof :start_time do
        optional :start_date_time, :string, 16
        optional :start_time_type, :enum, 10, "google.ads.googleads.v10.enums.TimeTypeEnum.TimeType"
      end
      oneof :end_time do
        optional :end_date_time, :string, 17
        optional :end_time_type, :enum, 14, "google.ads.googleads.v10.enums.TimeTypeEnum.TimeType"
      end
    end
    add_message "google.ads.googleads.v10.resources.BillingSetup.PaymentsAccountInfo" do
      proto3_optional :payments_account_id, :string, 6
      proto3_optional :payments_account_name, :string, 7
      proto3_optional :payments_profile_id, :string, 8
      proto3_optional :payments_profile_name, :string, 9
      proto3_optional :secondary_payments_profile_id, :string, 10
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V10
        module Resources
          BillingSetup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v10.resources.BillingSetup").msgclass
          BillingSetup::PaymentsAccountInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v10.resources.BillingSetup.PaymentsAccountInfo").msgclass
        end
      end
    end
  end
end