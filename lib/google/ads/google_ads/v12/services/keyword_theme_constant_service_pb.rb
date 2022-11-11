# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v12/services/keyword_theme_constant_service.proto

require 'google/protobuf'

require 'google/ads/google_ads/v12/resources/keyword_theme_constant_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v12/services/keyword_theme_constant_service.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v12.services.SuggestKeywordThemeConstantsRequest" do
      optional :query_text, :string, 1
      optional :country_code, :string, 2
      optional :language_code, :string, 3
    end
    add_message "google.ads.googleads.v12.services.SuggestKeywordThemeConstantsResponse" do
      repeated :keyword_theme_constants, :message, 1, "google.ads.googleads.v12.resources.KeywordThemeConstant"
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V12
        module Services
          SuggestKeywordThemeConstantsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v12.services.SuggestKeywordThemeConstantsRequest").msgclass
          SuggestKeywordThemeConstantsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v12.services.SuggestKeywordThemeConstantsResponse").msgclass
        end
      end
    end
  end
end