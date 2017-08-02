# SwaggerClient::CasesApi

All URIs are relative to *https://api.pacerpro.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cases_get_collection**](CasesApi.md#cases_get_collection) | **GET** /cases | A collection of cases.
[**cases_get_one**](CasesApi.md#cases_get_one) | **GET** /cases/{caseId} | A single case.
[**cases_get_parties**](CasesApi.md#cases_get_parties) | **GET** /cases/{caseId}/parties | A table of parties.


# **cases_get_collection**
> Array&lt;ModelCase&gt; cases_get_collection(opts)

A collection of cases.

Get all cases related to your account.

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

api_instance = SwaggerClient::CasesApi.new

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #A collection of cases.
  result = api_instance.cases_get_collection(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CasesApi->cases_get_collection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 

### Return type

[**Array&lt;ModelCase&gt;**](ModelCase.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cases_get_one**
> ModelCase cases_get_one(case_id, opts)

A single case.

Get a single case, specified by `caseId` in the path.

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

api_instance = SwaggerClient::CasesApi.new

case_id = "case_id_example" # String | The database identifier of the case.

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #A single case.
  result = api_instance.cases_get_one(case_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CasesApi->cases_get_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **case_id** | **String**| The database identifier of the case. | 
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 

### Return type

[**ModelCase**](ModelCase.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cases_get_parties**
> Array&lt;Party&gt; cases_get_parties(case_id, opts)

A table of parties.

A parsed, structured table of the listed parties in the case.

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

api_instance = SwaggerClient::CasesApi.new

case_id = "case_id_example" # String | The database identifier of the case.

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #A table of parties.
  result = api_instance.cases_get_parties(case_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CasesApi->cases_get_parties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **case_id** | **String**| The database identifier of the case. | 
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 

### Return type

[**Array&lt;Party&gt;**](Party.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



