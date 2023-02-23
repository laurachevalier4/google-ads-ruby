# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v13/resources/experiment.proto

require 'google/protobuf'

require 'google/ads/google_ads/v13/common/metric_goal_pb'
require 'google/ads/google_ads/v13/enums/async_action_status_pb'
require 'google/ads/google_ads/v13/enums/experiment_status_pb'
require 'google/ads/google_ads/v13/enums/experiment_type_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v13/resources/experiment.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v13.resources.Experiment" do
      optional :resource_name, :string, 1
      proto3_optional :experiment_id, :int64, 9
      optional :name, :string, 10
      optional :description, :string, 11
      optional :suffix, :string, 12
      optional :type, :enum, 13, "google.ads.googleads.v13.enums.ExperimentTypeEnum.ExperimentType"
      optional :status, :enum, 14, "google.ads.googleads.v13.enums.ExperimentStatusEnum.ExperimentStatus"
      proto3_optional :start_date, :string, 15
      proto3_optional :end_date, :string, 16
      repeated :goals, :message, 17, "google.ads.googleads.v13.common.MetricGoal"
      proto3_optional :long_running_operation, :string, 18
      optional :promote_status, :enum, 19, "google.ads.googleads.v13.enums.AsyncActionStatusEnum.AsyncActionStatus"
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V13
        module Resources
          Experiment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v13.resources.Experiment").msgclass
        end
      end
    end
  end
end