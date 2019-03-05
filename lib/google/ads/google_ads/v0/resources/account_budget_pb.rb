# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v0/resources/account_budget.proto

require 'google/protobuf'

require 'google/ads/google_ads/v0/enums/account_budget_proposal_type_pb'
require 'google/ads/google_ads/v0/enums/account_budget_status_pb'
require 'google/ads/google_ads/v0/enums/spending_limit_type_pb'
require 'google/ads/google_ads/v0/enums/time_type_pb'
require 'google/protobuf/wrappers_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v0.resources.AccountBudget" do
    optional :resource_name, :string, 1
    optional :id, :message, 2, "google.protobuf.Int64Value"
    optional :billing_setup, :message, 3, "google.protobuf.StringValue"
    optional :status, :enum, 4, "google.ads.googleads.v0.enums.AccountBudgetStatusEnum.AccountBudgetStatus"
    optional :name, :message, 5, "google.protobuf.StringValue"
    optional :proposed_start_date_time, :message, 6, "google.protobuf.StringValue"
    optional :approved_start_date_time, :message, 7, "google.protobuf.StringValue"
    optional :total_adjustments_micros, :message, 18, "google.protobuf.Int64Value"
    optional :amount_served_micros, :message, 19, "google.protobuf.Int64Value"
    optional :purchase_order_number, :message, 20, "google.protobuf.StringValue"
    optional :notes, :message, 21, "google.protobuf.StringValue"
    optional :pending_proposal, :message, 22, "google.ads.googleads.v0.resources.AccountBudget.PendingAccountBudgetProposal"
    oneof :proposed_end_time do
      optional :proposed_end_date_time, :message, 8, "google.protobuf.StringValue"
      optional :proposed_end_time_type, :enum, 9, "google.ads.googleads.v0.enums.TimeTypeEnum.TimeType"
    end
    oneof :approved_end_time do
      optional :approved_end_date_time, :message, 10, "google.protobuf.StringValue"
      optional :approved_end_time_type, :enum, 11, "google.ads.googleads.v0.enums.TimeTypeEnum.TimeType"
    end
    oneof :proposed_spending_limit do
      optional :proposed_spending_limit_micros, :message, 12, "google.protobuf.Int64Value"
      optional :proposed_spending_limit_type, :enum, 13, "google.ads.googleads.v0.enums.SpendingLimitTypeEnum.SpendingLimitType"
    end
    oneof :approved_spending_limit do
      optional :approved_spending_limit_micros, :message, 14, "google.protobuf.Int64Value"
      optional :approved_spending_limit_type, :enum, 15, "google.ads.googleads.v0.enums.SpendingLimitTypeEnum.SpendingLimitType"
    end
    oneof :adjusted_spending_limit do
      optional :adjusted_spending_limit_micros, :message, 16, "google.protobuf.Int64Value"
      optional :adjusted_spending_limit_type, :enum, 17, "google.ads.googleads.v0.enums.SpendingLimitTypeEnum.SpendingLimitType"
    end
  end
  add_message "google.ads.googleads.v0.resources.AccountBudget.PendingAccountBudgetProposal" do
    optional :account_budget_proposal, :message, 1, "google.protobuf.StringValue"
    optional :proposal_type, :enum, 2, "google.ads.googleads.v0.enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType"
    optional :name, :message, 3, "google.protobuf.StringValue"
    optional :start_date_time, :message, 4, "google.protobuf.StringValue"
    optional :purchase_order_number, :message, 9, "google.protobuf.StringValue"
    optional :notes, :message, 10, "google.protobuf.StringValue"
    optional :creation_date_time, :message, 11, "google.protobuf.StringValue"
    oneof :end_time do
      optional :end_date_time, :message, 5, "google.protobuf.StringValue"
      optional :end_time_type, :enum, 6, "google.ads.googleads.v0.enums.TimeTypeEnum.TimeType"
    end
    oneof :spending_limit do
      optional :spending_limit_micros, :message, 7, "google.protobuf.Int64Value"
      optional :spending_limit_type, :enum, 8, "google.ads.googleads.v0.enums.SpendingLimitTypeEnum.SpendingLimitType"
    end
  end
end

module Google::Ads::GoogleAds::V0::Resources
  AccountBudget = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v0.resources.AccountBudget").msgclass
  AccountBudget::PendingAccountBudgetProposal = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v0.resources.AccountBudget.PendingAccountBudgetProposal").msgclass
end