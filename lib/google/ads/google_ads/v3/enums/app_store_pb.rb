# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v3/enums/app_store.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v3.enums.AppStoreEnum" do
  end
  add_enum "google.ads.googleads.v3.enums.AppStoreEnum.AppStore" do
    value :UNSPECIFIED, 0
    value :UNKNOWN, 1
    value :APPLE_ITUNES, 2
    value :GOOGLE_PLAY, 3
  end
end

module Google::Ads::GoogleAds::V3::Enums
  AppStoreEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.enums.AppStoreEnum").msgclass
  AppStoreEnum::AppStore = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v3.enums.AppStoreEnum.AppStore").enummodule
end
