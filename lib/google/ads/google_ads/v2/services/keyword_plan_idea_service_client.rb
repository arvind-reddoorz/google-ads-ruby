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
# https://github.com/googleapis/googleapis/blob/master/google/ads/google_ads/v2/services/keyword_plan_idea_service.proto,
# and updates to that file get reflected here through a refresh process.
# For the short term, the refresh process will only be runnable by Google
# engineers.

require "json"
require "pathname"

require "google/gax"

require "google/ads/google_ads/v2/services/keyword_plan_idea_service_pb"
require "google/ads/google_ads/v2/services/credentials"

module Google
  module Ads
    module GoogleAds
      module V2
        module Services
          # Service to generate keyword ideas.
          #
          # @!attribute [r] keyword_plan_idea_service_stub
          #   @return [Google::Ads::GoogleAds::V2::Services::KeywordPlanIdeaService::Stub]
          class KeywordPlanIdeaServiceClient
            attr_reader :keyword_plan_idea_service_stub

            # The default address of the service.
            SERVICE_ADDRESS = "googleads.googleapis.com".freeze

            # The default port of the service.
            DEFAULT_SERVICE_PORT = 443

            # The default set of gRPC interceptors.
            GRPC_INTERCEPTORS = []

            DEFAULT_TIMEOUT = 30

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
              require "google/ads/google_ads/v2/services/keyword_plan_idea_service_services_pb"

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
                "keyword_plan_idea_service_client_config.json"
              )
              defaults = client_config_file.open do |f|
                Google::Gax.construct_settings(
                  "google.ads.googleads.v2.services.KeywordPlanIdeaService",
                  JSON.parse(f.read),
                  client_config,
                  Google::Gax::Grpc::STATUS_CODE_NAMES,
                  timeout,
                  errors: Google::Gax::Grpc::API_ERRORS,
                  metadata: headers
                )
              end

              # Allow overriding the service path/port in subclasses.
              service_path = self.class::SERVICE_ADDRESS
              port = self.class::DEFAULT_SERVICE_PORT
              interceptors = self.class::GRPC_INTERCEPTORS
              @keyword_plan_idea_service_stub = Google::Gax::Grpc.create_stub(
                service_path,
                port,
                chan_creds: chan_creds,
                channel: channel,
                updater_proc: updater_proc,
                scopes: scopes,
                interceptors: interceptors,
                &Google::Ads::GoogleAds::V2::Services::KeywordPlanIdeaService::Stub.method(:new)
              )

              @generate_keyword_ideas = Google::Gax.create_api_call(
                @keyword_plan_idea_service_stub.method(:generate_keyword_ideas),
                defaults["generate_keyword_ideas"],
                exception_transformer: exception_transformer,
                params_extractor: proc do |request|
                  {'customer_id' => request.customer_id}
                end
              )
            end

            # Service calls

            # Returns a list of keyword ideas.
            #
            # @param customer_id [String]
            #   The ID of the customer with the recommendation.
            # @param language [Google::Protobuf::StringValue | Hash]
            #   The resource name of the language to target.
            #   Required
            #   A hash of the same form as `Google::Protobuf::StringValue`
            #   can also be provided.
            # @param geo_target_constants [Array<Google::Protobuf::StringValue | Hash>]
            #   The resource names of the location to target.
            #   Max 10
            #   A hash of the same form as `Google::Protobuf::StringValue`
            #   can also be provided.
            # @param keyword_plan_network [Google::Ads::GoogleAds::V2::Enums::KeywordPlanNetworkEnum::KeywordPlanNetwork]
            #   Targeting network.
            # @param keyword_and_url_seed [Google::Ads::GoogleAds::V2::Services::KeywordAndUrlSeed | Hash]
            #   A Keyword and a specific Url to generate ideas from
            #   e.g. cars, www.example.com/cars.
            #   A hash of the same form as `Google::Ads::GoogleAds::V2::Services::KeywordAndUrlSeed`
            #   can also be provided.
            # @param keyword_seed [Google::Ads::GoogleAds::V2::Services::KeywordSeed | Hash]
            #   A Keyword or phrase to generate ideas from, e.g. cars.
            #   A hash of the same form as `Google::Ads::GoogleAds::V2::Services::KeywordSeed`
            #   can also be provided.
            # @param url_seed [Google::Ads::GoogleAds::V2::Services::UrlSeed | Hash]
            #   A specific url to generate ideas from, e.g. www.example.com/cars.
            #   A hash of the same form as `Google::Ads::GoogleAds::V2::Services::UrlSeed`
            #   can also be provided.
            # @param options [Google::Gax::CallOptions]
            #   Overrides the default settings for this call, e.g, timeout,
            #   retries, etc.
            # @yield [result, operation] Access the result along with the RPC operation
            # @yieldparam result [Google::Ads::GoogleAds::V2::Services::GenerateKeywordIdeaResponse]
            # @yieldparam operation [GRPC::ActiveCall::Operation]
            # @return [Google::Ads::GoogleAds::V2::Services::GenerateKeywordIdeaResponse]
            # @raise [Google::Gax::GaxError] if the RPC is aborted.
            # @example
            #   require "google/ads/google_ads"
            #
            #   keyword_plan_idea_client = Google::Ads::GoogleAds::KeywordPlanIdea.new(version: :v2)
            #
            #   # TODO: Initialize `customer_id`:
            #   customer_id = ''
            #
            #   # TODO: Initialize `language`:
            #   language = {}
            #
            #   # TODO: Initialize `geo_target_constants`:
            #   geo_target_constants = []
            #
            #   # TODO: Initialize `keyword_plan_network`:
            #   keyword_plan_network = :UNSPECIFIED
            #   response = keyword_plan_idea_client.generate_keyword_ideas(customer_id, language, geo_target_constants, keyword_plan_network)

            def generate_keyword_ideas \
                customer_id,
                language,
                geo_target_constants,
                keyword_plan_network,
                keyword_and_url_seed: nil,
                keyword_seed: nil,
                url_seed: nil,
                options: nil,
                &block
              req = {
                customer_id: customer_id,
                language: language,
                geo_target_constants: geo_target_constants,
                keyword_plan_network: keyword_plan_network,
                keyword_and_url_seed: keyword_and_url_seed,
                keyword_seed: keyword_seed,
                url_seed: url_seed
              }.delete_if { |_, v| v.nil? }
              req = Google::Gax::to_proto(req, Google::Ads::GoogleAds::V2::Services::GenerateKeywordIdeasRequest)
              @generate_keyword_ideas.call(req, options, &block)
            end
          end
        end
      end
    end
  end
end
