# PacerProClient::MatterstApi

All URIs are relative to *https://api.pacerpro.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**matters_get_collection**](MatterstApi.md#matters_get_collection) | **GET** /matters | A collection of matters.


# **matters_get_collection**
> Array&lt;Matter&gt; matters_get_collection(opts)

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

api_instance = PacerProClient::MatterstApi.new

opts = { 
  authorization: "authorization_example", # String | Bearer {...JSON Web Token...}
  activity_at: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The time of last activity in the case.
  court_type: "court_type_example", # String | The court type (district, bankruptcy or appellate.)
  has_client_matter_number: "has_client_matter_number_example", # String | If 'yes' or 'no', restricts results to matters that have or do not have a client matter number.
  page: 1, # Integer | Page number
  limit: 20 # Integer | Limit number of objects returned per page
}

begin
  #A collection of matters.
  result = api_instance.matters_get_collection(opts)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling MatterstApi->matters_get_collection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 
 **activity_at** | **DateTime**| The time of last activity in the case. | [optional] 
 **court_type** | **String**| The court type (district, bankruptcy or appellate.) | [optional] 
 **has_client_matter_number** | **String**| If &#39;yes&#39; or &#39;no&#39;, restricts results to matters that have or do not have a client matter number. | [optional] 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Limit number of objects returned per page | [optional] [default to 20]

### Return type

[**Array&lt;Matter&gt;**](Matter.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



