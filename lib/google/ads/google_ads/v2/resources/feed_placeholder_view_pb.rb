# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v2/resources/feed_placeholder_view.proto

require 'google/protobuf'

require 'google/ads/google_ads/v2/enums/placeholder_type_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v2.resources.FeedPlaceholderView" do
    optional :resource_name, :string, 1
    optional :placeholder_type, :enum, 2, "google.ads.googleads.v2.enums.PlaceholderTypeEnum.PlaceholderType"
  end
end

module Google::Ads::GoogleAds::V2::Resources
  FeedPlaceholderView = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.resources.FeedPlaceholderView").msgclass
end
