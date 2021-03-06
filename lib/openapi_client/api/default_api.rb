=begin
#Classify

#Classify Custom Image Recognition Service

The version of the OpenAPI document: 1.0.0
Contact: info@inoven.ai
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module OpenapiClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create New Model
    # Create a new custom image recognition model
    # @param model_name [String] Set a name for your model
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_new_model(model_name, opts = {})
      create_new_model_with_http_info(model_name, opts)
      nil
    end

    # Create New Model
    # Create a new custom image recognition model
    # @param model_name [String] Set a name for your model
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_new_model_with_http_info(model_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.create_new_model ...'
      end
      # verify the required parameter 'model_name' is set
      if @api_client.config.client_side_validation && model_name.nil?
        fail ArgumentError, "Missing the required parameter 'model_name' when calling DefaultApi.create_new_model"
      end
      # resource path
      local_var_path = '/models'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'model_name'] = model_name

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['x-api-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#create_new_model\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Model
    # Delete Model
    # @param model_id [String] You can find your model ids from Classify Dashboard.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_model(model_id, opts = {})
      delete_model_with_http_info(model_id, opts)
      nil
    end

    # Delete Model
    # Delete Model
    # @param model_id [String] You can find your model ids from Classify Dashboard.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_model_with_http_info(model_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.delete_model ...'
      end
      # verify the required parameter 'model_id' is set
      if @api_client.config.client_side_validation && model_id.nil?
        fail ArgumentError, "Missing the required parameter 'model_id' when calling DefaultApi.delete_model"
      end
      # resource path
      local_var_path = '/models'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'model_id'] = model_id

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['x-api-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#delete_model\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Models List
    # Get the list of of models created 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_models_list(opts = {})
      data, _status_code, _headers = get_models_list_with_http_info(opts)
      data
    end

    # Get Models List
    # Get the list of of models created 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_models_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.get_models_list ...'
      end
      # resource path
      local_var_path = '/models'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'String' 

      # auth_names
      auth_names = opts[:auth_names] || ['x-api-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#get_models_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Index by Using Image URL
    # Index by Using Image URL
    # @param inline_object [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def index_by_image_url(inline_object, opts = {})
      index_by_image_url_with_http_info(inline_object, opts)
      nil
    end

    # Index by Using Image URL
    # Index by Using Image URL
    # @param inline_object [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def index_by_image_url_with_http_info(inline_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.index_by_image_url ...'
      end
      # verify the required parameter 'inline_object' is set
      if @api_client.config.client_side_validation && inline_object.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object' when calling DefaultApi.index_by_image_url"
      end
      # resource path
      local_var_path = '/index_by_image_url'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['x-api-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#index_by_image_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Index Local Image
    # Index Local Image
    # @param [Hash] opts the optional parameters
    # @option opts [String] :model_id 
    # @option opts [String] :tag 
    # @option opts [File] :file 
    # @return [String]
    def index_image(opts = {})
      data, _status_code, _headers = index_image_with_http_info(opts)
      data
    end

    # Index Local Image
    # Index Local Image
    # @param [Hash] opts the optional parameters
    # @option opts [String] :model_id 
    # @option opts [String] :tag 
    # @option opts [File] :file 
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def index_image_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.index_image ...'
      end
      # resource path
      local_var_path = '/index_image'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['model_id'] = opts[:'model_id'] if !opts[:'model_id'].nil?
      form_params['tag'] = opts[:'tag'] if !opts[:'tag'].nil?
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'String' 

      # auth_names
      auth_names = opts[:auth_names] || ['x-api-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#index_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Tag Image by Using Image Url
    # Predict image tags by providing image url
    # @param model_id [String] Type your trained model id to predict. You get your model&#39;s id from Classify Dashboard.
    # @param image_url [String] Provide image url to predict
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def tag_image_by_url(model_id, image_url, opts = {})
      tag_image_by_url_with_http_info(model_id, image_url, opts)
      nil
    end

    # Tag Image by Using Image Url
    # Predict image tags by providing image url
    # @param model_id [String] Type your trained model id to predict. You get your model&#39;s id from Classify Dashboard.
    # @param image_url [String] Provide image url to predict
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def tag_image_by_url_with_http_info(model_id, image_url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.tag_image_by_url ...'
      end
      # verify the required parameter 'model_id' is set
      if @api_client.config.client_side_validation && model_id.nil?
        fail ArgumentError, "Missing the required parameter 'model_id' when calling DefaultApi.tag_image_by_url"
      end
      # verify the required parameter 'image_url' is set
      if @api_client.config.client_side_validation && image_url.nil?
        fail ArgumentError, "Missing the required parameter 'image_url' when calling DefaultApi.tag_image_by_url"
      end
      # resource path
      local_var_path = '/predict_by_image_url'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'model_id'] = model_id
      query_params[:'image_url'] = image_url

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['x-api-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#tag_image_by_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Predict by Image
    # Send a local image to tag
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @option opts [String] :model_id 
    # @return [nil]
    def tag_local_image(opts = {})
      tag_local_image_with_http_info(opts)
      nil
    end

    # Predict by Image
    # Send a local image to tag
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file 
    # @option opts [String] :model_id 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def tag_local_image_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.tag_local_image ...'
      end
      # resource path
      local_var_path = '/predict'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?
      form_params['model_id'] = opts[:'model_id'] if !opts[:'model_id'].nil?

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['x-api-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#tag_local_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Model
    # Update Model Name
    # @param model_name [String] Model Name
    # @param model_id [String] Model id to be renamed.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_model(model_name, model_id, opts = {})
      update_model_with_http_info(model_name, model_id, opts)
      nil
    end

    # Update Model
    # Update Model Name
    # @param model_name [String] Model Name
    # @param model_id [String] Model id to be renamed.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_model_with_http_info(model_name, model_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.update_model ...'
      end
      # verify the required parameter 'model_name' is set
      if @api_client.config.client_side_validation && model_name.nil?
        fail ArgumentError, "Missing the required parameter 'model_name' when calling DefaultApi.update_model"
      end
      # verify the required parameter 'model_id' is set
      if @api_client.config.client_side_validation && model_id.nil?
        fail ArgumentError, "Missing the required parameter 'model_id' when calling DefaultApi.update_model"
      end
      # resource path
      local_var_path = '/models'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'model_name'] = model_name
      query_params[:'model_id'] = model_id

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['x-api-key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#update_model\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
