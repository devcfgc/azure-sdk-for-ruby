# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  #
  # Composite Swagger for WebSite Management Client
  #
  class Recommendations
    include Azure::ARM::Web::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Recommendations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [WebSiteManagementClient] reference to the WebSiteManagementClient
    attr_reader :client

    #
    # Gets a list of recommendations associated with the specified subscription.
    #
    # Gets a list of recommendations associated with the specified subscription.
    #
    # @param featured [Boolean] If set, this API returns only the most critical
    # recommendation among the others. Otherwise this API returns all
    # recommendations available
    # @param filter [String] Return only channels specified in the filter. Filter
    # is specified by using OData syntax. Example: $filter=channels eq 'Api' or
    # channel eq 'Notification'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def get(featured = nil, filter = nil, custom_headers = nil)
      response = get_async(featured, filter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of recommendations associated with the specified subscription.
    #
    # Gets a list of recommendations associated with the specified subscription.
    #
    # @param featured [Boolean] If set, this API returns only the most critical
    # recommendation among the others. Otherwise this API returns all
    # recommendations available
    # @param filter [String] Return only channels specified in the filter. Filter
    # is specified by using OData syntax. Example: $filter=channels eq 'Api' or
    # channel eq 'Notification'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(featured = nil, filter = nil, custom_headers = nil)
      get_async(featured, filter, custom_headers).value!
    end

    #
    # Gets a list of recommendations associated with the specified subscription.
    #
    # Gets a list of recommendations associated with the specified subscription.
    #
    # @param featured [Boolean] If set, this API returns only the most critical
    # recommendation among the others. Otherwise this API returns all
    # recommendations available
    # @param filter [String] Return only channels specified in the filter. Filter
    # is specified by using OData syntax. Example: $filter=channels eq 'Api' or
    # channel eq 'Notification'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(featured = nil, filter = nil, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      api_version = '2016-03-01'


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.Web/recommendations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'featured' => featured,'$filter' => filter,'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'RecommendationElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'Recommendation'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the list of past recommendations optionally specified by the time range.
    #
    # Gets the list of past recommendations optionally specified by the time range.
    #
    # @param resource_group_name [String] Resource group name
    # @param site_name [String] Site name
    # @param start_time [String] The start time of a time range to query, e.g.
    # $filter=startTime eq '2015-01-01T00:00:00Z' and endTime eq
    # '2015-01-02T00:00:00Z'
    # @param end_time [String] The end time of a time range to query, e.g.
    # $filter=startTime eq '2015-01-01T00:00:00Z' and endTime eq
    # '2015-01-02T00:00:00Z'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_history_for_web_app(resource_group_name, site_name, start_time = nil, end_time = nil, custom_headers = nil)
      response = list_history_for_web_app_async(resource_group_name, site_name, start_time, end_time, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the list of past recommendations optionally specified by the time range.
    #
    # Gets the list of past recommendations optionally specified by the time range.
    #
    # @param resource_group_name [String] Resource group name
    # @param site_name [String] Site name
    # @param start_time [String] The start time of a time range to query, e.g.
    # $filter=startTime eq '2015-01-01T00:00:00Z' and endTime eq
    # '2015-01-02T00:00:00Z'
    # @param end_time [String] The end time of a time range to query, e.g.
    # $filter=startTime eq '2015-01-01T00:00:00Z' and endTime eq
    # '2015-01-02T00:00:00Z'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_history_for_web_app_with_http_info(resource_group_name, site_name, start_time = nil, end_time = nil, custom_headers = nil)
      list_history_for_web_app_async(resource_group_name, site_name, start_time, end_time, custom_headers).value!
    end

    #
    # Gets the list of past recommendations optionally specified by the time range.
    #
    # Gets the list of past recommendations optionally specified by the time range.
    #
    # @param resource_group_name [String] Resource group name
    # @param site_name [String] Site name
    # @param start_time [String] The start time of a time range to query, e.g.
    # $filter=startTime eq '2015-01-01T00:00:00Z' and endTime eq
    # '2015-01-02T00:00:00Z'
    # @param end_time [String] The end time of a time range to query, e.g.
    # $filter=startTime eq '2015-01-01T00:00:00Z' and endTime eq
    # '2015-01-02T00:00:00Z'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_history_for_web_app_async(resource_group_name, site_name, start_time = nil, end_time = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'site_name is nil' if site_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      api_version = '2016-03-01'


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/recommendationHistory'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'siteName' => site_name,'subscriptionId' => @client.subscription_id},
          query_params: {'startTime' => start_time,'endTime' => end_time,'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'RecommendationElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'Recommendation'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a list of recommendations associated with the specified web site.
    #
    # Gets a list of recommendations associated with the specified web site.
    #
    # @param resource_group_name [String] Resource group name
    # @param site_name [String] Site name
    # @param featured [Boolean] If set, this API returns only the most critical
    # recommendation among the others. Otherwise this API returns all
    # recommendations available
    # @param web_app_sku [String] The name of web app SKU.
    # @param num_slots [Integer] The number of site slots associated to the site
    # @param live_hours [Integer] If greater than zero, this API scans the last
    # active live site symptoms, dynamically generate on-the-fly recommendations
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list_recommended_rules_for_web_app(resource_group_name, site_name, featured = nil, web_app_sku = nil, num_slots = nil, live_hours = nil, custom_headers = nil)
      response = list_recommended_rules_for_web_app_async(resource_group_name, site_name, featured, web_app_sku, num_slots, live_hours, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of recommendations associated with the specified web site.
    #
    # Gets a list of recommendations associated with the specified web site.
    #
    # @param resource_group_name [String] Resource group name
    # @param site_name [String] Site name
    # @param featured [Boolean] If set, this API returns only the most critical
    # recommendation among the others. Otherwise this API returns all
    # recommendations available
    # @param web_app_sku [String] The name of web app SKU.
    # @param num_slots [Integer] The number of site slots associated to the site
    # @param live_hours [Integer] If greater than zero, this API scans the last
    # active live site symptoms, dynamically generate on-the-fly recommendations
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_recommended_rules_for_web_app_with_http_info(resource_group_name, site_name, featured = nil, web_app_sku = nil, num_slots = nil, live_hours = nil, custom_headers = nil)
      list_recommended_rules_for_web_app_async(resource_group_name, site_name, featured, web_app_sku, num_slots, live_hours, custom_headers).value!
    end

    #
    # Gets a list of recommendations associated with the specified web site.
    #
    # Gets a list of recommendations associated with the specified web site.
    #
    # @param resource_group_name [String] Resource group name
    # @param site_name [String] Site name
    # @param featured [Boolean] If set, this API returns only the most critical
    # recommendation among the others. Otherwise this API returns all
    # recommendations available
    # @param web_app_sku [String] The name of web app SKU.
    # @param num_slots [Integer] The number of site slots associated to the site
    # @param live_hours [Integer] If greater than zero, this API scans the last
    # active live site symptoms, dynamically generate on-the-fly recommendations
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_recommended_rules_for_web_app_async(resource_group_name, site_name, featured = nil, web_app_sku = nil, num_slots = nil, live_hours = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'site_name is nil' if site_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      api_version = '2016-03-01'


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/recommendations'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'siteName' => site_name,'subscriptionId' => @client.subscription_id},
          query_params: {'featured' => featured,'webAppSku' => web_app_sku,'numSlots' => num_slots,'liveHours' => live_hours,'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    required: false,
                    serialized_name: 'RecommendationElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'Recommendation'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the detailed properties of the recommendation object for the specified
    # web site.
    #
    # Gets the detailed properties of the recommendation object for the specified
    # web site.
    #
    # @param resource_group_name [String] Resource group name
    # @param site_name [String] Name of web app
    # @param name [String] Recommendation rule name
    # @param update_seen [Boolean] If true, the backend updates the last seen
    # timestamp of the recommendation object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RecommendationRule] operation results.
    #
    def get_rule_details_by_web_app(resource_group_name, site_name, name, update_seen = nil, custom_headers = nil)
      response = get_rule_details_by_web_app_async(resource_group_name, site_name, name, update_seen, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the detailed properties of the recommendation object for the specified
    # web site.
    #
    # Gets the detailed properties of the recommendation object for the specified
    # web site.
    #
    # @param resource_group_name [String] Resource group name
    # @param site_name [String] Name of web app
    # @param name [String] Recommendation rule name
    # @param update_seen [Boolean] If true, the backend updates the last seen
    # timestamp of the recommendation object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_rule_details_by_web_app_with_http_info(resource_group_name, site_name, name, update_seen = nil, custom_headers = nil)
      get_rule_details_by_web_app_async(resource_group_name, site_name, name, update_seen, custom_headers).value!
    end

    #
    # Gets the detailed properties of the recommendation object for the specified
    # web site.
    #
    # Gets the detailed properties of the recommendation object for the specified
    # web site.
    #
    # @param resource_group_name [String] Resource group name
    # @param site_name [String] Name of web app
    # @param name [String] Recommendation rule name
    # @param update_seen [Boolean] If true, the backend updates the last seen
    # timestamp of the recommendation object.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_rule_details_by_web_app_async(resource_group_name, site_name, name, update_seen = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'site_name is nil' if site_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      api_version = '2016-03-01'


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/recommendations/{name}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'siteName' => site_name,'name' => name,'subscriptionId' => @client.subscription_id},
          query_params: {'updateSeen' => update_seen,'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = RecommendationRule.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
