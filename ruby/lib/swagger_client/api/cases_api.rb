=begin
#PacerPro

#PacerPro API documentation.

OpenAPI spec version: 0.5.0
Contact: ken@pacerpro.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module SwaggerClient
  class CasesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # A collection of cases.
    # Get all cases related to your account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Token...}
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [Integer] :limit Limit number of objects returned per page (default to 20)
    # @return [Array<ModelCase>]
    def cases_get_collection(opts = {})
      data, _status_code, _headers = cases_get_collection_with_http_info(opts)
      return data
    end

    # A collection of cases.
    # Get all cases related to your account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Token...}
    # @option opts [Integer] :page Page number
    # @option opts [Integer] :limit Limit number of objects returned per page
    # @return [Array<(Array<ModelCase>, Fixnum, Hash)>] Array<ModelCase> data, response status code and response headers
    def cases_get_collection_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CasesApi.cases_get_collection ..."
      end
      # resource path
      local_var_path = "/cases".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ModelCase>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CasesApi#cases_get_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # A table of docket entries.
    # A parsed, structured table of the docket entries in the case.
    # @param case_id The database identifier of the case.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Tokens...}
    # @return [Array<DocketEntry>]
    def cases_get_docket_entries(case_id, opts = {})
      data, _status_code, _headers = cases_get_docket_entries_with_http_info(case_id, opts)
      return data
    end

    # A table of docket entries.
    # A parsed, structured table of the docket entries in the case.
    # @param case_id The database identifier of the case.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Tokens...}
    # @return [Array<(Array<DocketEntry>, Fixnum, Hash)>] Array<DocketEntry> data, response status code and response headers
    def cases_get_docket_entries_with_http_info(case_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CasesApi.cases_get_docket_entries ..."
      end
      # verify the required parameter 'case_id' is set
      fail ArgumentError, "Missing the required parameter 'case_id' when calling CasesApi.cases_get_docket_entries" if case_id.nil?
      # resource path
      local_var_path = "/cases/{caseId}/docket_entries".sub('{format}','json').sub('{' + 'caseId' + '}', case_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<DocketEntry>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CasesApi#cases_get_docket_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # A single case.
    # Get a single case, specified by `caseId` in the path.
    # @param case_id The database identifier of the case.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Token...}
    # @return [ModelCase]
    def cases_get_one(case_id, opts = {})
      data, _status_code, _headers = cases_get_one_with_http_info(case_id, opts)
      return data
    end

    # A single case.
    # Get a single case, specified by &#x60;caseId&#x60; in the path.
    # @param case_id The database identifier of the case.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Token...}
    # @return [Array<(ModelCase, Fixnum, Hash)>] ModelCase data, response status code and response headers
    def cases_get_one_with_http_info(case_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CasesApi.cases_get_one ..."
      end
      # verify the required parameter 'case_id' is set
      fail ArgumentError, "Missing the required parameter 'case_id' when calling CasesApi.cases_get_one" if case_id.nil?
      # resource path
      local_var_path = "/cases/{caseId}".sub('{format}','json').sub('{' + 'caseId' + '}', case_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ModelCase')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CasesApi#cases_get_one\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # A table of parties.
    # A parsed, structured table of the listed parties in the case.
    # @param case_id The database identifier of the case.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Token...}
    # @return [Array<Party>]
    def cases_get_parties(case_id, opts = {})
      data, _status_code, _headers = cases_get_parties_with_http_info(case_id, opts)
      return data
    end

    # A table of parties.
    # A parsed, structured table of the listed parties in the case.
    # @param case_id The database identifier of the case.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Token...}
    # @return [Array<(Array<Party>, Fixnum, Hash)>] Array<Party> data, response status code and response headers
    def cases_get_parties_with_http_info(case_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CasesApi.cases_get_parties ..."
      end
      # verify the required parameter 'case_id' is set
      fail ArgumentError, "Missing the required parameter 'case_id' when calling CasesApi.cases_get_parties" if case_id.nil?
      # resource path
      local_var_path = "/cases/{caseId}/parties".sub('{format}','json').sub('{' + 'caseId' + '}', case_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Party>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CasesApi#cases_get_parties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end