# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v1/errors/keyword_plan_negative_keyword_error.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v1.errors.KeywordPlanNegativeKeywordErrorEnum" do
  end
  add_enum "google.ads.googleads.v1.errors.KeywordPlanNegativeKeywordErrorEnum.KeywordPlanNegativeKeywordError" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
  end
end

module Google::Ads::GoogleAds::V1::Errors
  KeywordPlanNegativeKeywordErrorEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.errors.KeywordPlanNegativeKeywordErrorEnum").msgclass
  KeywordPlanNegativeKeywordErrorEnum::KeywordPlanNegativeKeywordError = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.errors.KeywordPlanNegativeKeywordErrorEnum.KeywordPlanNegativeKeywordError").enummodule
end
