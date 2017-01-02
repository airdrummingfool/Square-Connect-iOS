# SCRefund

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The unique ID of the refund. | 
**locationId** | **NSString*** | The ID of the refund&#39;s associated location. | 
**transactionId** | **NSString*** | The ID of the transaction refunded. | 
**tenderId** | **NSString*** | The ID of the tender refunded. | 
**createdAt** | **NSString*** | The time when the refund was created, in RFC 3339 format. | [optional] 
**reason** | **NSString*** | The reason for the refund being issued. | 
**amountMoney** | [**SCMoney***](SCMoney.md) | The amount of money refunded. | 
**status** | **NSString*** |  | 
**processingFeeMoney** | [**SCMoney***](SCMoney.md) | The amount of processing fee refunded. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


