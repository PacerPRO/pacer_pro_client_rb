# PacerProClient::AuthenticationApi

All URIs are relative to *https://api.pacerpro.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**session_delete**](AuthenticationApi.md#session_delete) | **DELETE** /session | Revoke all JWT tokens (logout).
[**session_get**](AuthenticationApi.md#session_get) | **GET** /session | Refresh authentication token
[**session_post**](AuthenticationApi.md#session_post) | **POST** /session | Initial authentication.


# **session_delete**
> session_delete

Revoke all JWT tokens (logout).

Revoke JWT tokens by spinning a new JTI. All current tokens will no longer work.

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

api_instance = PacerProClient::AuthenticationApi.new

begin
  #Revoke all JWT tokens (logout).
  api_instance.session_delete
rescue PacerProClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **session_get**
> Session session_get

Refresh authentication token

Using a valid auth token, you can use this to refresh it, thus extending the time unti it expires. See POST /session for instructions on the initial authentication.

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

api_instance = PacerProClient::AuthenticationApi.new

begin
  #Refresh authentication token
  result = api_instance.session_get
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Session**](Session.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **session_post**
> Session session_post(user)

Initial authentication.

Use this call to generate an authorization token for use in future calls. Provide your PacerPro credentials (email & password) in the User object. You will get a Session object in return.

### Example
```ruby
# load the gem
require 'pacer_pro_client'

api_instance = PacerProClient::AuthenticationApi.new

user = PacerProClient::User.new # User | User credentials


begin
  #Initial authentication.
  result = api_instance.session_post(user)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_post: #{e}"
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



