=begin
#Coinbase Platform API

#This is the OpenAPI 3.0 specification for the Coinbase Platform APIs, used in conjunction with the Coinbase Platform SDKs.

The version of the OpenAPI document: 0.0.1-alpha

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module Coinbase::Client
  class SmartContractsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new smart contract
    # Create a new smart contract
    # @param wallet_id [String] The ID of the wallet the address belongs to.
    # @param address_id [String] The ID of the address to deploy the smart contract from.
    # @param create_smart_contract_request [CreateSmartContractRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SmartContract]
    def create_smart_contract(wallet_id, address_id, create_smart_contract_request, opts = {})
      data, _status_code, _headers = create_smart_contract_with_http_info(wallet_id, address_id, create_smart_contract_request, opts)
      data
    end

    # Create a new smart contract
    # Create a new smart contract
    # @param wallet_id [String] The ID of the wallet the address belongs to.
    # @param address_id [String] The ID of the address to deploy the smart contract from.
    # @param create_smart_contract_request [CreateSmartContractRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmartContract, Integer, Hash)>] SmartContract data, response status code and response headers
    def create_smart_contract_with_http_info(wallet_id, address_id, create_smart_contract_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmartContractsApi.create_smart_contract ...'
      end
      # verify the required parameter 'wallet_id' is set
      if @api_client.config.client_side_validation && wallet_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_id' when calling SmartContractsApi.create_smart_contract"
      end
      # verify the required parameter 'address_id' is set
      if @api_client.config.client_side_validation && address_id.nil?
        fail ArgumentError, "Missing the required parameter 'address_id' when calling SmartContractsApi.create_smart_contract"
      end
      # verify the required parameter 'create_smart_contract_request' is set
      if @api_client.config.client_side_validation && create_smart_contract_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_smart_contract_request' when calling SmartContractsApi.create_smart_contract"
      end
      # resource path
      local_var_path = '/v1/wallets/{wallet_id}/addresses/{address_id}/smart_contracts'.sub('{' + 'wallet_id' + '}', CGI.escape(wallet_id.to_s)).sub('{' + 'address_id' + '}', CGI.escape(address_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_smart_contract_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SmartContract'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"SmartContractsApi.create_smart_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmartContractsApi#create_smart_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deploy a smart contract
    # Deploys a smart contract, by broadcasting the transaction to the network.
    # @param wallet_id [String] The ID of the wallet the address belongs to.
    # @param address_id [String] The ID of the address to broadcast the transaction from.
    # @param smart_contract_id [String] The UUID of the smart contract to broadcast the transaction to.
    # @param deploy_smart_contract_request [DeploySmartContractRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SmartContract]
    def deploy_smart_contract(wallet_id, address_id, smart_contract_id, deploy_smart_contract_request, opts = {})
      data, _status_code, _headers = deploy_smart_contract_with_http_info(wallet_id, address_id, smart_contract_id, deploy_smart_contract_request, opts)
      data
    end

    # Deploy a smart contract
    # Deploys a smart contract, by broadcasting the transaction to the network.
    # @param wallet_id [String] The ID of the wallet the address belongs to.
    # @param address_id [String] The ID of the address to broadcast the transaction from.
    # @param smart_contract_id [String] The UUID of the smart contract to broadcast the transaction to.
    # @param deploy_smart_contract_request [DeploySmartContractRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmartContract, Integer, Hash)>] SmartContract data, response status code and response headers
    def deploy_smart_contract_with_http_info(wallet_id, address_id, smart_contract_id, deploy_smart_contract_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmartContractsApi.deploy_smart_contract ...'
      end
      # verify the required parameter 'wallet_id' is set
      if @api_client.config.client_side_validation && wallet_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_id' when calling SmartContractsApi.deploy_smart_contract"
      end
      # verify the required parameter 'address_id' is set
      if @api_client.config.client_side_validation && address_id.nil?
        fail ArgumentError, "Missing the required parameter 'address_id' when calling SmartContractsApi.deploy_smart_contract"
      end
      # verify the required parameter 'smart_contract_id' is set
      if @api_client.config.client_side_validation && smart_contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'smart_contract_id' when calling SmartContractsApi.deploy_smart_contract"
      end
      # verify the required parameter 'deploy_smart_contract_request' is set
      if @api_client.config.client_side_validation && deploy_smart_contract_request.nil?
        fail ArgumentError, "Missing the required parameter 'deploy_smart_contract_request' when calling SmartContractsApi.deploy_smart_contract"
      end
      # resource path
      local_var_path = '/v1/wallets/{wallet_id}/addresses/{address_id}/smart_contracts/{smart_contract_id}/deploy'.sub('{' + 'wallet_id' + '}', CGI.escape(wallet_id.to_s)).sub('{' + 'address_id' + '}', CGI.escape(address_id.to_s)).sub('{' + 'smart_contract_id' + '}', CGI.escape(smart_contract_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(deploy_smart_contract_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SmartContract'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"SmartContractsApi.deploy_smart_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmartContractsApi#deploy_smart_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a specific smart contract deployed by address
    # Get a specific smart contract deployed by address.
    # @param wallet_id [String] The ID of the wallet the address belongs to.
    # @param address_id [String] The ID of the address to fetch the smart contract for.
    # @param smart_contract_id [String] The UUID of the smart contract to fetch.
    # @param [Hash] opts the optional parameters
    # @return [SmartContract]
    def get_smart_contract(wallet_id, address_id, smart_contract_id, opts = {})
      data, _status_code, _headers = get_smart_contract_with_http_info(wallet_id, address_id, smart_contract_id, opts)
      data
    end

    # Get a specific smart contract deployed by address
    # Get a specific smart contract deployed by address.
    # @param wallet_id [String] The ID of the wallet the address belongs to.
    # @param address_id [String] The ID of the address to fetch the smart contract for.
    # @param smart_contract_id [String] The UUID of the smart contract to fetch.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmartContract, Integer, Hash)>] SmartContract data, response status code and response headers
    def get_smart_contract_with_http_info(wallet_id, address_id, smart_contract_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmartContractsApi.get_smart_contract ...'
      end
      # verify the required parameter 'wallet_id' is set
      if @api_client.config.client_side_validation && wallet_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_id' when calling SmartContractsApi.get_smart_contract"
      end
      # verify the required parameter 'address_id' is set
      if @api_client.config.client_side_validation && address_id.nil?
        fail ArgumentError, "Missing the required parameter 'address_id' when calling SmartContractsApi.get_smart_contract"
      end
      # verify the required parameter 'smart_contract_id' is set
      if @api_client.config.client_side_validation && smart_contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'smart_contract_id' when calling SmartContractsApi.get_smart_contract"
      end
      # resource path
      local_var_path = '/v1/wallets/{wallet_id}/addresses/{address_id}/smart_contracts/{smart_contract_id}'.sub('{' + 'wallet_id' + '}', CGI.escape(wallet_id.to_s)).sub('{' + 'address_id' + '}', CGI.escape(address_id.to_s)).sub('{' + 'smart_contract_id' + '}', CGI.escape(smart_contract_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SmartContract'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'session']

      new_options = opts.merge(
        :operation => :"SmartContractsApi.get_smart_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmartContractsApi#get_smart_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List smart contracts
    # List smart contracts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page Pagination token for retrieving the next set of results
    # @return [SmartContractList]
    def list_smart_contracts(opts = {})
      data, _status_code, _headers = list_smart_contracts_with_http_info(opts)
      data
    end

    # List smart contracts
    # List smart contracts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page Pagination token for retrieving the next set of results
    # @return [Array<(SmartContractList, Integer, Hash)>] SmartContractList data, response status code and response headers
    def list_smart_contracts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmartContractsApi.list_smart_contracts ...'
      end
      # resource path
      local_var_path = '/v1/smart_contracts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SmartContractList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'session']

      new_options = opts.merge(
        :operation => :"SmartContractsApi.list_smart_contracts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmartContractsApi#list_smart_contracts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read data from a smart contract
    # Perform a read operation on a smart contract without creating a transaction
    # @param network_id [String] 
    # @param contract_address [String] 
    # @param read_contract_request [ReadContractRequest] 
    # @param [Hash] opts the optional parameters
    # @return [SolidityValue]
    def read_contract(network_id, contract_address, read_contract_request, opts = {})
      data, _status_code, _headers = read_contract_with_http_info(network_id, contract_address, read_contract_request, opts)
      data
    end

    # Read data from a smart contract
    # Perform a read operation on a smart contract without creating a transaction
    # @param network_id [String] 
    # @param contract_address [String] 
    # @param read_contract_request [ReadContractRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SolidityValue, Integer, Hash)>] SolidityValue data, response status code and response headers
    def read_contract_with_http_info(network_id, contract_address, read_contract_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmartContractsApi.read_contract ...'
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling SmartContractsApi.read_contract"
      end
      # verify the required parameter 'contract_address' is set
      if @api_client.config.client_side_validation && contract_address.nil?
        fail ArgumentError, "Missing the required parameter 'contract_address' when calling SmartContractsApi.read_contract"
      end
      # verify the required parameter 'read_contract_request' is set
      if @api_client.config.client_side_validation && read_contract_request.nil?
        fail ArgumentError, "Missing the required parameter 'read_contract_request' when calling SmartContractsApi.read_contract"
      end
      # resource path
      local_var_path = '/v1/networks/{network_id}/smart_contracts/{contract_address}/read'.sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s)).sub('{' + 'contract_address' + '}', CGI.escape(contract_address.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(read_contract_request)

      # return_type
      return_type = opts[:debug_return_type] || 'SolidityValue'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'session']

      new_options = opts.merge(
        :operation => :"SmartContractsApi.read_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmartContractsApi#read_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register a smart contract
    # Register a smart contract
    # @param network_id [String] The ID of the network to fetch.
    # @param contract_address [String] EVM address of the smart contract (42 characters, including &#39;0x&#39;, in lowercase)
    # @param [Hash] opts the optional parameters
    # @option opts [RegisterSmartContractRequest] :register_smart_contract_request 
    # @return [SmartContract]
    def register_smart_contract(network_id, contract_address, opts = {})
      data, _status_code, _headers = register_smart_contract_with_http_info(network_id, contract_address, opts)
      data
    end

    # Register a smart contract
    # Register a smart contract
    # @param network_id [String] The ID of the network to fetch.
    # @param contract_address [String] EVM address of the smart contract (42 characters, including &#39;0x&#39;, in lowercase)
    # @param [Hash] opts the optional parameters
    # @option opts [RegisterSmartContractRequest] :register_smart_contract_request 
    # @return [Array<(SmartContract, Integer, Hash)>] SmartContract data, response status code and response headers
    def register_smart_contract_with_http_info(network_id, contract_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmartContractsApi.register_smart_contract ...'
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling SmartContractsApi.register_smart_contract"
      end
      # verify the required parameter 'contract_address' is set
      if @api_client.config.client_side_validation && contract_address.nil?
        fail ArgumentError, "Missing the required parameter 'contract_address' when calling SmartContractsApi.register_smart_contract"
      end
      # resource path
      local_var_path = '/v1/networks/{network_id}/smart_contracts/{contract_address}/register'.sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s)).sub('{' + 'contract_address' + '}', CGI.escape(contract_address.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'register_smart_contract_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'SmartContract'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'session']

      new_options = opts.merge(
        :operation => :"SmartContractsApi.register_smart_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmartContractsApi#register_smart_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a smart contract
    # Update a smart contract
    # @param network_id [String] The ID of the network to fetch.
    # @param contract_address [String] EVM address of the smart contract (42 characters, including &#39;0x&#39;, in lowercase)
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateSmartContractRequest] :update_smart_contract_request 
    # @return [SmartContract]
    def update_smart_contract(network_id, contract_address, opts = {})
      data, _status_code, _headers = update_smart_contract_with_http_info(network_id, contract_address, opts)
      data
    end

    # Update a smart contract
    # Update a smart contract
    # @param network_id [String] The ID of the network to fetch.
    # @param contract_address [String] EVM address of the smart contract (42 characters, including &#39;0x&#39;, in lowercase)
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateSmartContractRequest] :update_smart_contract_request 
    # @return [Array<(SmartContract, Integer, Hash)>] SmartContract data, response status code and response headers
    def update_smart_contract_with_http_info(network_id, contract_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmartContractsApi.update_smart_contract ...'
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling SmartContractsApi.update_smart_contract"
      end
      # verify the required parameter 'contract_address' is set
      if @api_client.config.client_side_validation && contract_address.nil?
        fail ArgumentError, "Missing the required parameter 'contract_address' when calling SmartContractsApi.update_smart_contract"
      end
      # resource path
      local_var_path = '/v1/networks/{network_id}/smart_contracts/{contract_address}'.sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s)).sub('{' + 'contract_address' + '}', CGI.escape(contract_address.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_smart_contract_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'SmartContract'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'session']

      new_options = opts.merge(
        :operation => :"SmartContractsApi.update_smart_contract",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmartContractsApi#update_smart_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
