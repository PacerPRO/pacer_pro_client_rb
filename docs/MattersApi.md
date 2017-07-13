# PacerProClient::MattersApi

All URIs are relative to *https://api.pacerpro.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matters_get**](MattersApi.md#matters_get) | **GET** /matters | 
[**matters_matter_id_get**](MattersApi.md#matters_matter_id_get) | **GET** /matters/{matterId} | 


# **matters_get**
> Matters matters_get(authorization)



### Example
```ruby
# load the gem
require 'pacer_pro_client'

api_instance = PacerProClient::MattersApi.new

authorization = "authorization_example" # String | The header must look like: \"Authorization: Bearer {...jwtToken...}\"


begin
  result = api_instance.matters_get(authorization)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling MattersApi->matters_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| The header must look like: \&quot;Authorization: Bearer {...jwtToken...}\&quot; | 

### Return type

[**Matters**](Matters.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **matters_matter_id_get**
> Matter matters_matter_id_get(matter_id, authorization)



### Example
```ruby
# load the gem
require 'pacer_pro_client'

api_instance = PacerProClient::MattersApi.new

matter_id = "matter_id_example" # String | The database identifier of the matter.

authorization = "authorization_example" # String | The header must look like: \"Authorization: Bearer {...jwtToken...}\"


begin
  result = api_instance.matters_matter_id_get(matter_id, authorization)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling MattersApi->matters_matter_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matter_id** | **String**| The database identifier of the matter. | 
 **authorization** | **String**| The header must look like: \&quot;Authorization: Bearer {...jwtToken...}\&quot; | 

### Return type

[**Matter**](Matter.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



