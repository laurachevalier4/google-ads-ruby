# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v13/enums/location_extension_targeting_criterion_field.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v13/enums/location_extension_targeting_criterion_field.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v13.enums.LocationExtensionTargetingCriterionFieldEnum" do
    end
    add_enum "google.ads.googleads.v13.enums.LocationExtensionTargetingCriterionFieldEnum.LocationExtensionTargetingCriterionField" do
      value :UNSPECIFIED, 0
      value :UNKNOWN, 1
      value :ADDRESS_LINE_1, 2
      value :ADDRESS_LINE_2, 3
      value :CITY, 4
      value :PROVINCE, 5
      value :POSTAL_CODE, 6
      value :COUNTRY_CODE, 7
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V13
        module Enums
          LocationExtensionTargetingCriterionFieldEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v13.enums.LocationExtensionTargetingCriterionFieldEnum").msgclass
          LocationExtensionTargetingCriterionFieldEnum::LocationExtensionTargetingCriterionField = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v13.enums.LocationExtensionTargetingCriterionFieldEnum.LocationExtensionTargetingCriterionField").enummodule
        end
      end
    end
  end
end