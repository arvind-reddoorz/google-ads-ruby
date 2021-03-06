# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/google_ads/v2/enums/location_extension_targeting_criterion_field.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.ads.googleads.v2.enums.LocationExtensionTargetingCriterionFieldEnum" do
  end
  add_enum "google.ads.googleads.v2.enums.LocationExtensionTargetingCriterionFieldEnum.LocationExtensionTargetingCriterionField" do
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

module Google::Ads::GoogleAds::V2::Enums
  LocationExtensionTargetingCriterionFieldEnum = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.enums.LocationExtensionTargetingCriterionFieldEnum").msgclass
  LocationExtensionTargetingCriterionFieldEnum::LocationExtensionTargetingCriterionField = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v2.enums.LocationExtensionTargetingCriterionFieldEnum.LocationExtensionTargetingCriterionField").enummodule
end
