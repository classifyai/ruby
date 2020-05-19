# OpenapiClient::DefaultApi

All URIs are relative to *https://api.classifyai.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_model**](DefaultApi.md#create_new_model) | **PUT** /models | Create New Model
[**delete_model**](DefaultApi.md#delete_model) | **DELETE** /models | Delete Model
[**get_models_list**](DefaultApi.md#get_models_list) | **GET** /models | Get Models List
[**index_by_image_url**](DefaultApi.md#index_by_image_url) | **GET** /index_by_image_url | Index by Using Image URL
[**index_image**](DefaultApi.md#index_image) | **POST** /index_image | Index Local Image
[**tag_image_by_url**](DefaultApi.md#tag_image_by_url) | **GET** /predict_by_image_url | Tag Image by Using Image Url
[**tag_local_image**](DefaultApi.md#tag_local_image) | **POST** /predict | Predict by Image
[**update_model**](DefaultApi.md#update_model) | **POST** /models | Update Model



## create_new_model

> create_new_model(model_name)

Create New Model

Create a new custom image recognition model

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
model_name = '{\"model_name\":\"\\\"Test model name\\\"\"}' # String | Set a name for your model

begin
  #Create New Model
  api_instance.create_new_model(model_name)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->create_new_model: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_name** | **String**| Set a name for your model | 

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_model

> delete_model(model_id)

Delete Model

Delete Model

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
model_id = 'model_id_example' # String | You can find your model ids from Classify Dashboard.

begin
  #Delete Model
  api_instance.delete_model(model_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->delete_model: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_id** | **String**| You can find your model ids from Classify Dashboard. | 

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_models_list

> String get_models_list

Get Models List

Get the list of of models created 

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new

begin
  #Get Models List
  result = api_instance.get_models_list
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->get_models_list: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_by_image_url

> String index_by_image_url(model_id, image_url)

Index by Using Image URL

Index by Using Image URL

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
model_id = 'model_id_example' # String | Model ID
image_url = 'image_url_example' # String | Image URL

begin
  #Index by Using Image URL
  result = api_instance.index_by_image_url(model_id, image_url)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->index_by_image_url: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_id** | **String**| Model ID | 
 **image_url** | **String**| Image URL | 

### Return type

**String**

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## index_image

> String index_image(model_id, opts)

Index Local Image

Index Local Image

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
model_id = 'model_id_example' # String | Model ID
opts = {
  file: File.new('/path/to/file') # File | 
}

begin
  #Index Local Image
  result = api_instance.index_image(model_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->index_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_id** | **String**| Model ID | 
 **file** | **File**|  | [optional] 

### Return type

**String**

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## tag_image_by_url

> tag_image_by_url(model_id, image_url)

Tag Image by Using Image Url

Predict image tags by providing image url

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
model_id = 'model_id_example' # String | Type your trained model id to predict. You get your model's id from Classify Dashboard.
image_url = 'image_url_example' # String | Provide image url to predict

begin
  #Tag Image by Using Image Url
  api_instance.tag_image_by_url(model_id, image_url)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->tag_image_by_url: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_id** | **String**| Type your trained model id to predict. You get your model&#39;s id from Classify Dashboard. | 
 **image_url** | **String**| Provide image url to predict | 

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tag_local_image

> tag_local_image(model_id, opts)

Predict by Image

Send a local image to tag

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
model_id = 'model_id_example' # String | Type your trained model id to predict. You get your model's id from Classify Dashboard.
opts = {
  file: File.new('/path/to/file') # File | 
}

begin
  #Predict by Image
  api_instance.tag_local_image(model_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->tag_local_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_id** | **String**| Type your trained model id to predict. You get your model&#39;s id from Classify Dashboard. | 
 **file** | **File**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## update_model

> update_model(model_name, model_id)

Update Model

Update Model Name

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = OpenapiClient::DefaultApi.new
model_name = 'model_name_example' # String | Model Name
model_id = 'model_id_example' # String | Model id to be renamed.

begin
  #Update Model
  api_instance.update_model(model_name, model_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DefaultApi->update_model: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model_name** | **String**| Model Name | 
 **model_id** | **String**| Model id to be renamed. | 

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

