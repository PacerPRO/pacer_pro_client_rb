# PacerProClient::CasesApi

All URIs are relative to *https://api.pacerpro.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cases_get_case_summary_job**](CasesApi.md#cases_get_case_summary_job) | **GET** /cases/{caseId}/case_summary_job | Starts a job to scrape case summary data for the case.
[**cases_get_collection**](CasesApi.md#cases_get_collection) | **GET** /cases | A collection of cases.
[**cases_get_docket_entries**](CasesApi.md#cases_get_docket_entries) | **GET** /cases/{caseId}/docket_entries | A table of docket entries.
[**cases_get_one**](CasesApi.md#cases_get_one) | **GET** /cases/{caseId} | A single case.
[**cases_get_parties**](CasesApi.md#cases_get_parties) | **GET** /cases/{caseId}/parties | A table of parties.


# **cases_get_case_summary_job**
> InlineResponse200 cases_get_case_summary_job(case_id, opts)

Starts a job to scrape case summary data for the case.

Starts a job to scrape case summary data for the case, and returns the job id.

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

api_instance = PacerProClient::CasesApi.new

case_id = "case_id_example" # String | The database identifier of the case.

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #Starts a job to scrape case summary data for the case.
  result = api_instance.cases_get_case_summary_job(case_id, opts)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling CasesApi->cases_get_case_summary_job: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **case_id** | **String**| The database identifier of the case. | 
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cases_get_collection**
> Array&lt;ModelCase&gt; cases_get_collection(opts)

A collection of cases.

Get all cases related to your account.

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

api_instance = PacerProClient::CasesApi.new

opts = { 
  authorization: "authorization_example", # String | Bearer {...JSON Web Token...}
  page: 1, # Integer | Page number
  limit: 20 # Integer | Limit number of objects returned per page
}

begin
  #A collection of cases.
  result = api_instance.cases_get_collection(opts)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling CasesApi->cases_get_collection: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Bearer {...JSON Web Token...} | [optional] 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Limit number of objects returned per page | [optional] [default to 20]

### Return type

[**Array&lt;ModelCase&gt;**](ModelCase.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cases_get_docket_entries**
> Array&lt;DocketEntry&gt; cases_get_docket_entries(case_id, opts)

A table of docket entries.

A parsed, structured table of the docket entries in the case.

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

api_instance = PacerProClient::CasesApi.new

case_id = "case_id_example" # String | The database identifier of the case.

opts = { 
  authorization: "authorization_example", # String | Bearer {...JSON Web Tokens...}
  from_doc_num: 56, # Integer | Limit returned docket entries to those starting at this docket entry number.
  page: 1, # Integer | Page number
  limit: 20, # Integer | Limit number of objects returned per page
  since: DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | Limit returned docket entries to those filed on or after this date.
}

begin
  #A table of docket entries.
  result = api_instance.cases_get_docket_entries(case_id, opts)
  p result
rescue PacerProClient::ApiError => e
  puts "Exception when calling CasesApi->cases_get_docket_entries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **case_id** | **String**| The database identifier of the case. | 
 **authorization** | **String**| Bearer {...JSON Web Tokens...} | [optional] 
 **from_doc_num** | **Integer**| Limit returned docket entries to those starting at this docket entry number. | [optional] 
 **page** | **Integer**| Page number | [optional] [default to 1]
 **limit** | **Integer**| Limit number of objects returned per page | [optional] [default to 20]
 **since** | **DateTime**| Limit returned docket entries to those filed on or after this date. | [optional] 

### Return type

[**Array&lt;DocketEntry&gt;**](DocketEntry.md)

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
require 'pacer_pro_client'
# setup authorization
PacerProClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PacerProClient::CasesApi.new

case_id = "case_id_example" # String | The database identifier of the case.

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #A single case.
  result = api_instance.cases_get_one(case_id, opts)
  p result
rescue PacerProClient::ApiError => e
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
require 'pacer_pro_client'
# setup authorization
PacerProClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = PacerProClient::CasesApi.new

case_id = "case_id_example" # String | The database identifier of the case.

opts = { 
  authorization: "authorization_example" # String | Bearer {...JSON Web Token...}
}

begin
  #A table of parties.
  result = api_instance.cases_get_parties(case_id, opts)
  p result
rescue PacerProClient::ApiError => e
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



