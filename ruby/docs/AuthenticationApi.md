# SwaggerClient::AuthenticationApi

All URIs are relative to *https://sdx94nst9f.execute-api.us-east-1.amazonaws.com/qa*

Method | HTTP request | Description
------------- | ------------- | -------------
[**session_create**](AuthenticationApi.md#session_create) | **POST** /session | Initial authentication.
[**session_delete**](AuthenticationApi.md#session_delete) | **DELETE** /session | Revoke all JWT tokens (logout).
[**session_refresh**](AuthenticationApi.md#session_refresh) | **GET** /session | Refresh authentication token


# **session_create**
> Session session_create(user)

Initial authentication.

Use this call to generate an authorization token for use in future calls. Provide your PacerPro credentials (email & password) in the User object. You will get a Session object in return.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AuthenticationApi.new

user = SwaggerClient::User.new # User | User credentials


begin
  #Initial authentication.
  result = api_instance.session_create(user)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)| User credentials | 

### Return type

[**Session**](Session.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **session_delete**
> Empty session_delete(opts)

Revoke all JWT tokens (logout).

Revoke JWT tokens by spinning a new JTI. All current tokens will no longer work.

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

api_instance = SwaggerClient::AuthenticationApi.new

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #Revoke all JWT tokens (logout).
  result = api_instance.session_delete(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 

### Return type

[**Empty**](Empty.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **session_refresh**
> Session session_refresh(opts)

Refresh authentication token

Using a valid auth token, you can use this to refresh it, thus extending the time unti it expires. See POST /session for instructions on the initial authentication.

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

api_instance = SwaggerClient::AuthenticationApi.new

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #Refresh authentication token
  result = api_instance.session_refresh(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_refresh: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 

### Return type

[**Session**](Session.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



