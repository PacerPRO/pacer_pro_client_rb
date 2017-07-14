# PacerProClient::MattersApi

All URIs are relative to *https://api.pacerpro.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matters_get**](MattersApi.md#matters_get) | **GET** /matters | A collection of matters.
[**matters_matter_id_get**](MattersApi.md#matters_matter_id_get) | **GET** /matters/{matterId} | A single matter.


# **matters_get**
> Matters matters_get

A collection of matters.

### Example
```ruby
# load the gem
require 'pacer_pro_client'
# setup authorization
PacerProClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PacerProClient::MattersApi.new

begin
  #A collection of matters.
  result = api_instance.matters_get
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling MattersApi->matters_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Matters**](Matters.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **matters_matter_id_get**
> Matter matters_matter_id_get(matter_id)

A single matter.

### Example
```ruby
# load the gem
require 'pacer_pro_client'
# setup authorization
PacerProClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PacerProClient::MattersApi.new

matter_id = "matter_id_example" # String | The database identifier of the matter.


begin
  #A single matter.
  result = api_instance.matters_matter_id_get(matter_id)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling MattersApi->matters_matter_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matter_id** | **String**| The database identifier of the matter. | 

### Return type

[**Matter**](Matter.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



