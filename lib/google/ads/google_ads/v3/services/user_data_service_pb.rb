# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v3/services/user_data_service.proto

require 'google/protobuf'

require 'google/ads/google_ads/v3/common/offline_user_data_pb'
require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/client_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v3.services.UploadUserDataRequest" do
    optional :customer_id, :string, 1
    repeated :operations, :message, 3, "google.ads.googleads.v3.services.UserDataOperation"
    oneof :metadata do
      optional :customer_match_user_list_metadata, :message, 2, "google.ads.googleads.v3.common.CustomerMatchUserListMetadata"
    end
  end
  add_message "google.ads.googleads.v3.services.UserDataOperation" do
    oneof :operation do
      optional :create, :message, 1, "google.ads.googleads.v3.common.UserData"
    end
  end
  add_message "google.ads.googleads.v3.services.UploadUserDataResponse" do
    optional :upload_date_time, :message, 1, "google.protobuf.StringValue"
    optional :received_operations_count, :message, 2, "google.protobuf.Int32Value"
  end
end

module Google::Ads::GoogleAds::V3::Services
  UploadUserDataRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.services.UploadUserDataRequest").msgclass
  UserDataOperation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.services.UserDataOperation").msgclass
  UploadUserDataResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.services.UploadUserDataResponse").msgclass
end