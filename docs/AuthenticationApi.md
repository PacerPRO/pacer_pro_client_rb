# PacerProClient::AuthenticationApi

All URIs are relative to *https://api.pacerpro.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**session_delete**](AuthenticationApi.md#session_delete) | **DELETE** /session | Revoke all JWT tokens (logout).
[**session_get**](AuthenticationApi.md#session_get) | **GET** /session | Refresh authentication token
[**session_post**](AuthenticationApi.md#session_post) | **POST** /session | Initial authentication.


# **session_delete**
> session_delete(authorization)

Revoke all JWT tokens (logout).

Revoke JWT tokens by spinning a new JTI. All current tokens will no longer work.

### Example
```ruby
# load the gem
require 'pacer_pro_client'

api_instance = PacerProClient::AuthenticationApi.new

authorization = "authorization_example" # String | 


begin
  #Revoke all JWT tokens (logout).
  api_instance.session_delete(authorization)
rescue PacerProClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **session_get**
> Session session_get(authorization)

Refresh authentication token

Using a valid auth token, you can use this to refresh it, thus extending the time unti it expires. See POST /session for instructions on the initial authentication.

### Example
```ruby
# load the gem
require 'pacer_pro_client'

api_instance = PacerProClient::AuthenticationApi.new

authorization = "authorization_example" # String | 


begin
  #Refresh authentication token
  result = api_instance.session_get(authorization)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 

### Return type

[**Session**](Session.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **session_post**
> Session session_post(session)

Initial authentication.

Use this call to generate an authorization token for use in future calls. Provide your PacerPro credentials (email & password) in the User object. You will get a Session object in return.

### Example
```ruby
# load the gem
require 'pacer_pro_client'

api_instance = PacerProClient::AuthenticationApi.new

session = PacerProClient::User.new # User | 


begin
  #Initial authentication.
  result = api_instance.session_post(session)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **session** | [**User**](User.md)|  | 

### Return type

[**Session**](Session.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



