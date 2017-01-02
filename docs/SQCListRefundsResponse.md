# SQCListRefundsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**NSArray&lt;SQCError&gt;***](SQCError.md) | Any errors that occurred during the request. | [optional] 
**refunds** | [**NSArray&lt;SQCRefund&gt;***](SQCRefund.md) | An array of refunds that match your query. | [optional] 
**cursor** | **NSString*** | A pagination cursor for retrieving the next set of results, if any remain.  Provide this value as the &#x60;cursor&#x60; parameter in a subsequent request to the **ListTenderRefunds** endpoint. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


