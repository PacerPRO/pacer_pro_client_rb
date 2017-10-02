# SwaggerClient::MattersApi

All URIs are relative to *https://sdx94nst9f.execute-api.us-east-1.amazonaws.com/qa*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matters_get_collection**](MattersApi.md#matters_get_collection) | **GET** /matters | A collection of matters.
[**matters_get_one**](MattersApi.md#matters_get_one) | **GET** /matters/{matterId} | A single matter.


# **matters_get_collection**
> Array&lt;Matter&gt; matters_get_collection(opts)

A collection of matters.

Get all matters relevant to the firm.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::MattersApi.new

opts = { 
  authorization: "authorization_example", # String | Bearer {...JSON Web Token...}
  court_type: "court_type_example", # String | The court type (district, bankruptcy or appellate.)
  client_matter_number: "client_matter_number_example", # String | The client matter number.
  page: 1, # Integer | Page number
  limit: 20 # Integer | Limit number of objects returned per page
}

begin
  #A collection of matters.
  result = api_instance.matters_get_collection(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MattersApi->matters_get_collection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 
 **court_type** | **String**| The court type (district, bankruptcy or appellate.) | [optional] 
 **client_matter_number** | **String**| The client matter number. | [optional] 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Limit number of objects returned per page | [optional] [default to 20]

### Return type

[**Array&lt;Matter&gt;**](Matter.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **matters_get_one**
> Matter matters_get_one(matter_id, opts)

A single matter.

Get a single matter, specified by `matterId` in the path.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::MattersApi.new

matter_id = "matter_id_example" # String | The database identifier of the matter.

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #A single matter.
  result = api_instance.matters_get_one(matter_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MattersApi->matters_get_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matter_id** | **String**| The database identifier of the matter. | 
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 

### Return type

[**Matter**](Matter.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



