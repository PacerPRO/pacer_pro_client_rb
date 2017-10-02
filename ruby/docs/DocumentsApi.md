# SwaggerClient::DocumentsApi

All URIs are relative to *https://sdx94nst9f.execute-api.us-east-1.amazonaws.com/qa*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documents_get_one**](DocumentsApi.md#documents_get_one) | **GET** /documents/{documentId} | A single document.


# **documents_get_one**
> Document documents_get_one(document_id, opts)

A single document.

Get a single document, specified by `documentId` in the path.

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

api_instance = SwaggerClient::DocumentsApi.new

document_id = "document_id_example" # String | The database identifier of the document.

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #A single document.
  result = api_instance.documents_get_one(document_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DocumentsApi->documents_get_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_id** | **String**| The database identifier of the document. | 
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/pdf



