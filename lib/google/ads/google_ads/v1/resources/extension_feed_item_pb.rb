# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v1/resources/extension_feed_item.proto

require 'google/protobuf'

require 'google/ads/google_ads/v1/common/criteria_pb'
require 'google/ads/google_ads/v1/common/extensions_pb'
require 'google/ads/google_ads/v1/enums/extension_type_pb'
require 'google/ads/google_ads/v1/enums/feed_item_status_pb'
require 'google/ads/google_ads/v1/enums/feed_item_target_device_pb'
require 'google/protobuf/wrappers_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v1.resources.ExtensionFeedItem" do
    optional :resource_name, :string, 1
    optional :extension_type, :enum, 13, "google.ads.googleads.v1.enums.ExtensionTypeEnum.ExtensionType"
    optional :start_date_time, :message, 5, "google.protobuf.StringValue"
    optional :end_date_time, :message, 6, "google.protobuf.StringValue"
    repeated :ad_schedules, :message, 16, "google.ads.googleads.v1.common.AdScheduleInfo"
    optional :device, :enum, 17, "google.ads.googleads.v1.enums.FeedItemTargetDeviceEnum.FeedItemTargetDevice"
    optional :targeted_geo_target_constant, :message, 20, "google.protobuf.StringValue"
    optional :status, :enum, 4, "google.ads.googleads.v1.enums.FeedItemStatusEnum.FeedItemStatus"
    oneof :extension do
      optional :sitelink_feed_item, :message, 2, "google.ads.googleads.v1.common.SitelinkFeedItem"
      optional :structured_snippet_feed_item, :message, 3, "google.ads.googleads.v1.common.StructuredSnippetFeedItem"
      optional :app_feed_item, :message, 7, "google.ads.googleads.v1.common.AppFeedItem"
      optional :call_feed_item, :message, 8, "google.ads.googleads.v1.common.CallFeedItem"
      optional :callout_feed_item, :message, 9, "google.ads.googleads.v1.common.CalloutFeedItem"
      optional :text_message_feed_item, :message, 10, "google.ads.googleads.v1.common.TextMessageFeedItem"
      optional :price_feed_item, :message, 11, "google.ads.googleads.v1.common.PriceFeedItem"
      optional :promotion_feed_item, :message, 12, "google.ads.googleads.v1.common.PromotionFeedItem"
      optional :location_feed_item, :message, 14, "google.ads.googleads.v1.common.LocationFeedItem"
      optional :affiliate_location_feed_item, :message, 15, "google.ads.googleads.v1.common.AffiliateLocationFeedItem"
    end
    oneof :serving_resource_targeting do
      optional :targeted_campaign, :message, 18, "google.protobuf.StringValue"
      optional :targeted_ad_group, :message, 19, "google.protobuf.StringValue"
    end
  end
end

module Google::Ads::GoogleAds::V1::Resources
  ExtensionFeedItem = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v1.resources.ExtensionFeedItem").msgclass
end
