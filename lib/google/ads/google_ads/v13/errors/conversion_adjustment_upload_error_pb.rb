# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v13/errors/conversion_adjustment_upload_error.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v13/errors/conversion_adjustment_upload_error.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v13.errors.ConversionAdjustmentUploadErrorEnum" do
    end
    add_enum "google.ads.googleads.v13.errors.ConversionAdjustmentUploadErrorEnum.ConversionAdjustmentUploadError" do
      value :UNSPECIFIED, 0
      value :UNKNOWN, 1
      value :TOO_RECENT_CONVERSION_ACTION, 2
      value :INVALID_CONVERSION_ACTION, 3
      value :CONVERSION_ALREADY_RETRACTED, 4
      value :CONVERSION_NOT_FOUND, 5
      value :CONVERSION_EXPIRED, 6
      value :ADJUSTMENT_PRECEDES_CONVERSION, 7
      value :MORE_RECENT_RESTATEMENT_FOUND, 8
      value :TOO_RECENT_CONVERSION, 9
      value :CANNOT_RESTATE_CONVERSION_ACTION_THAT_ALWAYS_USES_DEFAULT_CONVERSION_VALUE, 10
      value :TOO_MANY_ADJUSTMENTS_IN_REQUEST, 11
      value :TOO_MANY_ADJUSTMENTS, 12
      value :RESTATEMENT_ALREADY_EXISTS, 13
      value :DUPLICATE_ADJUSTMENT_IN_REQUEST, 14
      value :CUSTOMER_NOT_ACCEPTED_CUSTOMER_DATA_TERMS, 15
      value :CONVERSION_ACTION_NOT_ELIGIBLE_FOR_ENHANCEMENT, 16
      value :INVALID_USER_IDENTIFIER, 17
      value :UNSUPPORTED_USER_IDENTIFIER, 18
      value :GCLID_DATE_TIME_PAIR_AND_ORDER_ID_BOTH_SET, 20
      value :CONVERSION_ALREADY_ENHANCED, 21
      value :DUPLICATE_ENHANCEMENT_IN_REQUEST, 22
      value :CUSTOMER_DATA_POLICY_PROHIBITS_ENHANCEMENT, 23
      value :MISSING_ORDER_ID_FOR_WEBPAGE, 24
      value :ORDER_ID_CONTAINS_PII, 25
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V13
        module Errors
          ConversionAdjustmentUploadErrorEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v13.errors.ConversionAdjustmentUploadErrorEnum").msgclass
          ConversionAdjustmentUploadErrorEnum::ConversionAdjustmentUploadError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v13.errors.ConversionAdjustmentUploadErrorEnum.ConversionAdjustmentUploadError").enummodule
        end
      end
    end
  end
end
