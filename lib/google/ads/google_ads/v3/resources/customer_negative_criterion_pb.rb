# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v3/resources/customer_negative_criterion.proto

require 'google/protobuf'

require 'google/ads/google_ads/v3/common/criteria_pb'
require 'google/ads/google_ads/v3/enums/criterion_type_pb'
require 'google/api/resource_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v3.resources.CustomerNegativeCriterion" do
    optional :resource_name, :string, 1
    optional :id, :message, 2, "google.protobuf.Int64Value"
    optional :type, :enum, 3, "google.ads.googleads.v3.enums.CriterionTypeEnum.CriterionType"
    oneof :criterion do
      optional :content_label, :message, 4, "google.ads.googleads.v3.common.ContentLabelInfo"
      optional :mobile_application, :message, 5, "google.ads.googleads.v3.common.MobileApplicationInfo"
      optional :mobile_app_category, :message, 6, "google.ads.googleads.v3.common.MobileAppCategoryInfo"
      optional :placement, :message, 7, "google.ads.googleads.v3.common.PlacementInfo"
      optional :youtube_video, :message, 8, "google.ads.googleads.v3.common.YouTubeVideoInfo"
      optional :youtube_channel, :message, 9, "google.ads.googleads.v3.common.YouTubeChannelInfo"
    end
  end
end

module Google::Ads::GoogleAds::V3::Resources
  CustomerNegativeCriterion = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.resources.CustomerNegativeCriterion").msgclass
end