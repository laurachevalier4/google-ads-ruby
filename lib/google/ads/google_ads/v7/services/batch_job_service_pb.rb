# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v7/services/batch_job_service.proto

require 'google/protobuf'

require 'google/ads/google_ads/v7/enums/response_content_type_pb'
require 'google/ads/google_ads/v7/resources/batch_job_pb'
require 'google/ads/google_ads/v7/services/google_ads_service_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/rpc/status_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/ads/googleads/v7/services/batch_job_service.proto", :syntax => :proto3) do
    add_message "google.ads.googleads.v7.services.MutateBatchJobRequest" do
      optional :customer_id, :string, 1
      optional :operation, :message, 2, "google.ads.googleads.v7.services.BatchJobOperation"
    end
    add_message "google.ads.googleads.v7.services.BatchJobOperation" do
      oneof :operation do
        optional :create, :message, 1, "google.ads.googleads.v7.resources.BatchJob"
      end
    end
    add_message "google.ads.googleads.v7.services.MutateBatchJobResponse" do
      optional :result, :message, 1, "google.ads.googleads.v7.services.MutateBatchJobResult"
    end
    add_message "google.ads.googleads.v7.services.MutateBatchJobResult" do
      optional :resource_name, :string, 1
    end
    add_message "google.ads.googleads.v7.services.GetBatchJobRequest" do
      optional :resource_name, :string, 1
    end
    add_message "google.ads.googleads.v7.services.RunBatchJobRequest" do
      optional :resource_name, :string, 1
    end
    add_message "google.ads.googleads.v7.services.AddBatchJobOperationsRequest" do
      optional :resource_name, :string, 1
      optional :sequence_token, :string, 2
      repeated :mutate_operations, :message, 3, "google.ads.googleads.v7.services.MutateOperation"
    end
    add_message "google.ads.googleads.v7.services.AddBatchJobOperationsResponse" do
      optional :total_operations, :int64, 1
      optional :next_sequence_token, :string, 2
    end
    add_message "google.ads.googleads.v7.services.ListBatchJobResultsRequest" do
      optional :resource_name, :string, 1
      optional :page_token, :string, 2
      optional :page_size, :int32, 3
      optional :response_content_type, :enum, 4, "google.ads.googleads.v7.enums.ResponseContentTypeEnum.ResponseContentType"
    end
    add_message "google.ads.googleads.v7.services.ListBatchJobResultsResponse" do
      repeated :results, :message, 1, "google.ads.googleads.v7.services.BatchJobResult"
      optional :next_page_token, :string, 2
    end
    add_message "google.ads.googleads.v7.services.BatchJobResult" do
      optional :operation_index, :int64, 1
      optional :mutate_operation_response, :message, 2, "google.ads.googleads.v7.services.MutateOperationResponse"
      optional :status, :message, 3, "google.rpc.Status"
    end
  end
end

module Google
  module Ads
    module GoogleAds
      module V7
        module Services
          MutateBatchJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.MutateBatchJobRequest").msgclass
          BatchJobOperation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.BatchJobOperation").msgclass
          MutateBatchJobResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.MutateBatchJobResponse").msgclass
          MutateBatchJobResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.MutateBatchJobResult").msgclass
          GetBatchJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.GetBatchJobRequest").msgclass
          RunBatchJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.RunBatchJobRequest").msgclass
          AddBatchJobOperationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.AddBatchJobOperationsRequest").msgclass
          AddBatchJobOperationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.AddBatchJobOperationsResponse").msgclass
          ListBatchJobResultsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.ListBatchJobResultsRequest").msgclass
          ListBatchJobResultsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.ListBatchJobResultsResponse").msgclass
          BatchJobResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v7.services.BatchJobResult").msgclass
        end
      end
    end
  end
end