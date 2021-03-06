# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# EDITING INSTRUCTIONS
# This file was generated from the file
# https://github.com/googleapis/googleapis/blob/master/google/ads/google_ads/v2/services/google_ads_service.proto,
# and updates to that file get reflected here through a refresh process.
# For the short term, the refresh process will only be runnable by Google
# engineers.

require "json"
require "pathname"

require "google/gax"

require "google/ads/google_ads/v2/services/google_ads_service_pb"
require "google/ads/google_ads/v2/services/credentials"

module Google
  module Ads
    module GoogleAds
      module V2
        module Services
          # Service to fetch data and metrics across resources.
          #
          # @!attribute [r] google_ads_service_stub
          #   @return [Google::Ads::GoogleAds::V2::Services::GoogleAdsService::Stub]
          class GoogleAdsServiceClient
            attr_reader :google_ads_service_stub

            # The default address of the service.
            SERVICE_ADDRESS = "googleads.googleapis.com".freeze

            # The default port of the service.
            DEFAULT_SERVICE_PORT = 443

            # The default set of gRPC interceptors.
            GRPC_INTERCEPTORS = []

            DEFAULT_TIMEOUT = 30

            PAGE_DESCRIPTORS = {
              "search" => Google::Gax::PageDescriptor.new(
                "page_token",
                "next_page_token",
                "results")
            }.freeze

            private_constant :PAGE_DESCRIPTORS

            # The scopes needed to make gRPC calls to all of the methods defined in
            # this service.
            ALL_SCOPES = [
            ].freeze


            # @param credentials [Google::Auth::Credentials, String, Hash, GRPC::Core::Channel, GRPC::Core::ChannelCredentials, Proc]
            #   Provides the means for authenticating requests made by the client. This parameter can
            #   be many types.
            #   A `Google::Auth::Credentials` uses a the properties of its represented keyfile for
            #   authenticating requests made by this client.
            #   A `String` will be treated as the path to the keyfile to be used for the construction of
            #   credentials for this client.
            #   A `Hash` will be treated as the contents of a keyfile to be used for the construction of
            #   credentials for this client.
            #   A `GRPC::Core::Channel` will be used to make calls through.
            #   A `GRPC::Core::ChannelCredentials` for the setting up the RPC client. The channel credentials
            #   should already be composed with a `GRPC::Core::CallCredentials` object.
            #   A `Proc` will be used as an updater_proc for the Grpc channel. The proc transforms the
            #   metadata for requests, generally, to give OAuth credentials.
            # @param scopes [Array<String>]
            #   The OAuth scopes for this service. This parameter is ignored if
            #   an updater_proc is supplied.
            # @param client_config [Hash]
            #   A Hash for call options for each method. See
            #   Google::Gax#construct_settings for the structure of
            #   this data. Falls back to the default config if not specified
            #   or the specified config is missing data points.
            # @param timeout [Numeric]
            #   The default timeout, in seconds, for calls made through this client.
            # @param metadata [Hash]
            #   Default metadata to be sent with each request. This can be overridden on a per call basis.
            # @param exception_transformer [Proc]
            #   An optional proc that intercepts any exceptions raised during an API call to inject
            #   custom error handling.
            def initialize \
                credentials: nil,
                scopes: ALL_SCOPES,
                client_config: {},
                timeout: DEFAULT_TIMEOUT,
                metadata: nil,
                exception_transformer: nil,
                lib_name: nil,
                lib_version: ""
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "google/gax/grpc"
              require "google/ads/google_ads/v2/services/google_ads_service_services_pb"

              credentials ||= Google::Ads::GoogleAds::V2::Services::Credentials.default

              if credentials.is_a?(String) || credentials.is_a?(Hash)
                updater_proc = Google::Ads::GoogleAds::V2::Services::Credentials.new(credentials).updater_proc
              end
              if credentials.is_a?(GRPC::Core::Channel)
                channel = credentials
              end
              if credentials.is_a?(GRPC::Core::ChannelCredentials)
                chan_creds = credentials
              end
              if credentials.is_a?(Proc)
                updater_proc = credentials
              end
              if credentials.is_a?(Google::Auth::Credentials)
                updater_proc = credentials.updater_proc
              end

              package_version = Gem.loaded_specs['google-ads-googleads'].version.version

              google_api_client = "gl-ruby/#{RUBY_VERSION}"
              google_api_client << " #{lib_name}/#{lib_version}" if lib_name
              google_api_client << " gapic/#{package_version} gax/#{Google::Gax::VERSION}"
              google_api_client << " grpc/#{GRPC::VERSION}"
              google_api_client.freeze

              headers = { :"x-goog-api-client" => google_api_client }
              headers.merge!(metadata) unless metadata.nil?
              client_config_file = Pathname.new(__dir__).join(
                "google_ads_service_client_config.json"
              )
              defaults = client_config_file.open do |f|
                Google::Gax.construct_settings(
                  "google.ads.googleads.v2.services.GoogleAdsService",
                  JSON.parse(f.read),
                  client_config,
                  Google::Gax::Grpc::STATUS_CODE_NAMES,
                  timeout,
                  page_descriptors: PAGE_DESCRIPTORS,
                  errors: Google::Gax::Grpc::API_ERRORS,
                  metadata: headers
                )
              end

              # Allow overriding the service path/port in subclasses.
              service_path = self.class::SERVICE_ADDRESS
              port = self.class::DEFAULT_SERVICE_PORT
              interceptors = self.class::GRPC_INTERCEPTORS
              @google_ads_service_stub = Google::Gax::Grpc.create_stub(
                service_path,
                port,
                chan_creds: chan_creds,
                channel: channel,
                updater_proc: updater_proc,
                scopes: scopes,
                interceptors: interceptors,
                &Google::Ads::GoogleAds::V2::Services::GoogleAdsService::Stub.method(:new)
              )

              @search = Google::Gax.create_api_call(
                @google_ads_service_stub.method(:search),
                defaults["search"],
                exception_transformer: exception_transformer,
                params_extractor: proc do |request|
                  {'customer_id' => request.customer_id}
                end
              )
              @mutate = Google::Gax.create_api_call(
                @google_ads_service_stub.method(:mutate),
                defaults["mutate"],
                exception_transformer: exception_transformer,
                params_extractor: proc do |request|
                  {'customer_id' => request.customer_id}
                end
              )
            end

            # Service calls

            # Returns all rows that match the search query.
            #
            # @param customer_id [String]
            #   The ID of the customer being queried.
            # @param query [String]
            #   The query string.
            # @param page_size [Integer]
            #   The maximum number of resources contained in the underlying API
            #   response. If page streaming is performed per-resource, this
            #   parameter does not affect the return value. If page streaming is
            #   performed per-page, this determines the maximum number of
            #   resources in a page.
            # @param validate_only [true, false]
            #   If true, the request is validated but not executed.
            # @param return_summary_row [true, false]
            #   If true, summary row will be included in the response.
            #   Otherwise(false or not specified) summary row will not be returned.
            # @param options [Google::Gax::CallOptions]
            #   Overrides the default settings for this call, e.g, timeout,
            #   retries, etc.
            # @yield [result, operation] Access the result along with the RPC operation
            # @yieldparam result [Google::Gax::PagedEnumerable<Google::Ads::GoogleAds::V2::Services::GoogleAdsRow>]
            # @yieldparam operation [GRPC::ActiveCall::Operation]
            # @return [Google::Gax::PagedEnumerable<Google::Ads::GoogleAds::V2::Services::GoogleAdsRow>]
            #   An enumerable of Google::Ads::GoogleAds::V2::Services::GoogleAdsRow instances.
            #   See Google::Gax::PagedEnumerable documentation for other
            #   operations such as per-page iteration or access to the response
            #   object.
            # @raise [Google::Gax::GaxError] if the RPC is aborted.
            # @example
            #   require "google/ads/google_ads"
            #
            #   google_ads_client = Google::Ads::GoogleAds::GoogleAds.new(version: :v2)
            #
            #   # TODO: Initialize `customer_id`:
            #   customer_id = ''
            #
            #   # TODO: Initialize `query`:
            #   query = ''
            #
            #   # Iterate over all results.
            #   google_ads_client.search(customer_id, query).each do |element|
            #     # Process element.
            #   end
            #
            #   # Or iterate over results one page at a time.
            #   google_ads_client.search(customer_id, query).each_page do |page|
            #     # Process each page at a time.
            #     page.each do |element|
            #       # Process element.
            #     end
            #   end

            def search \
                customer_id,
                query,
                page_size: nil,
                validate_only: nil,
                return_summary_row: nil,
                options: nil,
                &block
              req = {
                customer_id: customer_id,
                query: query,
                page_size: page_size,
                validate_only: validate_only,
                return_summary_row: return_summary_row
              }.delete_if { |_, v| v.nil? }
              req = Google::Gax::to_proto(req, Google::Ads::GoogleAds::V2::Services::SearchGoogleAdsRequest)
              @search.call(req, options, &block)
            end

            # Creates, updates, or removes resources. This method supports atomic
            # transactions with multiple types of resources. For example, you can
            # atomically create a campaign and a campaign budget, or perform up to
            # thousands of mutates atomically.
            #
            # This method is essentially a wrapper around a series of mutate methods. The
            # only features it offers over calling those methods directly are:
            #
            # * Atomic transactions
            # * Temp resource names (described below)
            # * Somewhat reduced latency over making a series of mutate calls
            #
            # Note: Only resources that support atomic transactions are included, so this
            # method can't replace all calls to individual services.
            #
            # == Atomic Transaction Benefits
            #
            # Atomicity makes error handling much easier. If you're making a series of
            # changes and one fails, it can leave your account in an inconsistent state.
            # With atomicity, you either reach the desired state directly, or the request
            # fails and you can retry.
            #
            # == Temp Resource Names
            #
            # Temp resource names are a special type of resource name used to create a
            # resource and reference that resource in the same request. For example, if a
            # campaign budget is created with `resource_name` equal to
            # `customers/123/campaignBudgets/-1`, that resource name can be reused in
            # the `Campaign.budget` field in the same request. That way, the two
            # resources are created and linked atomically.
            #
            # To create a temp resource name, put a negative number in the part of the
            # name that the server would normally allocate.
            #
            # Note:
            #
            # * Resources must be created with a temp name before the name can be reused.
            #   For example, the previous CampaignBudget+Campaign example would fail if
            #   the mutate order was reversed.
            # * Temp names are not remembered across requests.
            # * There's no limit to the number of temp names in a request.
            # * Each temp name must use a unique negative number, even if the resource
            #   types differ.
            #
            # == Latency
            #
            # It's important to group mutates by resource type or the request may time
            # out and fail. Latency is roughly equal to a series of calls to individual
            # mutate methods, where each change in resource type is a new call. For
            # example, mutating 10 campaigns then 10 ad groups is like 2 calls, while
            # mutating 1 campaign, 1 ad group, 1 campaign, 1 ad group is like 4 calls.
            #
            # @param customer_id [String]
            #   The ID of the customer whose resources are being modified.
            # @param mutate_operations [Array<Google::Ads::GoogleAds::V2::Services::MutateOperation | Hash>]
            #   The list of operations to perform on individual resources.
            #   A hash of the same form as `Google::Ads::GoogleAds::V2::Services::MutateOperation`
            #   can also be provided.
            # @param partial_failure [true, false]
            #   If true, successful operations will be carried out and invalid
            #   operations will return errors. If false, all operations will be carried
            #   out in one transaction if and only if they are all valid.
            #   Default is false.
            # @param validate_only [true, false]
            #   If true, the request is validated but not executed. Only errors are
            #   returned, not results.
            # @param options [Google::Gax::CallOptions]
            #   Overrides the default settings for this call, e.g, timeout,
            #   retries, etc.
            # @yield [result, operation] Access the result along with the RPC operation
            # @yieldparam result [Google::Ads::GoogleAds::V2::Services::MutateGoogleAdsResponse]
            # @yieldparam operation [GRPC::ActiveCall::Operation]
            # @return [Google::Ads::GoogleAds::V2::Services::MutateGoogleAdsResponse]
            # @raise [Google::Gax::GaxError] if the RPC is aborted.
            # @example
            #   require "google/ads/google_ads"
            #
            #   google_ads_client = Google::Ads::GoogleAds::GoogleAds.new(version: :v2)
            #
            #   # TODO: Initialize `customer_id`:
            #   customer_id = ''
            #
            #   # TODO: Initialize `mutate_operations`:
            #   mutate_operations = []
            #   response = google_ads_client.mutate(customer_id, mutate_operations)

            def mutate \
                customer_id,
                mutate_operations,
                partial_failure: nil,
                validate_only: nil,
                options: nil,
                &block
              req = {
                customer_id: customer_id,
                mutate_operations: mutate_operations,
                partial_failure: partial_failure,
                validate_only: validate_only
              }.delete_if { |_, v| v.nil? }
              req = Google::Gax::to_proto(req, Google::Ads::GoogleAds::V2::Services::MutateGoogleAdsRequest)
              @mutate.call(req, options, &block)
            end
          end
        end
      end
    end
  end
end
