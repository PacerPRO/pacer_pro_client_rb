# PacerProClient::MattersApi

All URIs are relative to *https://api.pacerpro.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matter_by_id**](MattersApi.md#matter_by_id) | **GET** /matters/{matterId} | A single matter.
[**matters_collection**](MattersApi.md#matters_collection) | **GET** /matters | A collection of matters.


# **matter_by_id**
> Matter matter_by_id(matter_id, opts)

A single matter.

Get a single matter, specified by `matterId` in the path.

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

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #A single matter.
  result = api_instance.matter_by_id(matter_id, opts)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling MattersApi->matter_by_id: #{e}"
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



# **matters_collection**
> Matters matters_collection(opts)

A collection of matters.

Get all matters relevant to the firm.

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

opts = { 
  authorization: "authorization_example" # String | Bearer {...jwtToken...}
}

begin
  #A collection of matters.
  result = api_instance.matters_collection(opts)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling MattersApi->matters_collection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer {...jwtToken...} | [optional] 

### Return type

[**Matters**](Matters.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



