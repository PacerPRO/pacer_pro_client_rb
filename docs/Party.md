# SwaggerClient::Party

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** | Unique identifier of party. Hash of clientName, role, representing firm(s), caseId? Do we parse &#39;a Deleware LLC&#39;? | [optional] 
**role** | **String** | e.g. Defednant, Plaintiff, etc. | [optional] 
**name** | **String** | The name of the client in this role. | [optional] 
**attorneys** | [**Array&lt;Attorney&gt;**](Attorney.md) | A list of attorneys representing the client. | [optional] 
**firms** | [**Array&lt;Firm&gt;**](Firm.md) | A list of firms (extracted from attorneys. | [optional] 


