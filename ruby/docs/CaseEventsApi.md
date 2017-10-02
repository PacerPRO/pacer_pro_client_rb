# SwaggerClient::CaseEventsApi

All URIs are relative to *https://api.pacerpro.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**case_events_get_collection**](CaseEventsApi.md#case_events_get_collection) | **GET** /case_events | A collection of case events.
[**case_events_get_one**](CaseEventsApi.md#case_events_get_one) | **GET** /case_events/{caseEventId} | A single case event.


# **case_events_get_collection**
> Array&lt;CaseEvent&gt; case_events_get_collection(opts)

A collection of case events.

Get case events for your organization.

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

api_instance = SwaggerClient::CaseEventsApi.new

opts = { 
  authorization: "authorization_example", # String | Bearer {...JSON Web Token...}
  retrieved_since: "retrieved_since_example", # String | Limit results to case events retrieved since the given value.
  limit: "limit_example", # String | Limit number of results to the given number.
  page: "page_example" # String | Start results at the given page.
}

begin
  #A collection of case events.
  result = api_instance.case_events_get_collection(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CaseEventsApi->case_events_get_collection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 
 **retrieved_since** | **String**| Limit results to case events retrieved since the given value. | [optional] 
 **limit** | **String**| Limit number of results to the given number. | [optional] 
 **page** | **String**| Start results at the given page. | [optional] 

### Return type

[**Array&lt;CaseEvent&gt;**](CaseEvent.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **case_events_get_one**
> CaseEvent case_events_get_one(case_event_id, opts)

A single case event.

Get a single case event, specified by `caseEventId` in the path.

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

api_instance = SwaggerClient::CaseEventsApi.new

case_event_id = "case_event_id_example" # String | The database identifier of the case event.

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #A single case event.
  result = api_instance.case_events_get_one(case_event_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CaseEventsApi->case_events_get_one: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **case_event_id** | **String**| The database identifier of the case event. | 
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 

### Return type

[**CaseEvent**](CaseEvent.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



