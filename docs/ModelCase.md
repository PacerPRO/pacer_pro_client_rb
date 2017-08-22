# PacerProClient::ModelCase

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Database identifier of the object. | [optional] 
**case_id** | **String** | Database identifier of the Case object. | [optional] 
**judge** | **String** | Initials of the presiding judge. | [optional] 
**case_number** | **String** | Canonical case number. | [optional] 
**case_title** | **String** | Canonical case title. | [optional] 
**nature_of_suit** | **String** | Judicial Conference designation of the case. | [optional] 
**docket_entries** | **Integer** | The count of docket entries in the case. | [optional] 
**activity_at** | **DateTime** | The time of last activity in the case.  | [optional] 
**referral** | **String** | Referral to a magistrate judge. See [Rule 59](https://www.law.cornell.edu/rules/frcrmp/rule_59) | [optional] 
**filed_date** | **DateTime** | Date filed with the court. | [optional] 
**last_filed_date** | **DateTime** | Date of the most recent filing. May be after the closedDate. | [optional] 
**closed_date** | **DateTime** | Date that the case was closed by the court. There may still be activity long after this date. | [optional] 
**chapter** | **String** | Bankruptcy only. Refers to the chapter of the Bankruptcy Code. | [optional] 
**related_bankruptcy_case_number** | **String** | Case number of related case. | [optional] 


