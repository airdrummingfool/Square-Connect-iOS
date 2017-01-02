# SQCCreateRefundRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A value you specify that uniquely identifies this refund among refunds you&#39;ve created for the tender.  If you&#39;re unsure whether a particular refund succeeded, you can reattempt it with the same idempotency key without worrying about duplicating the refund. | 
**tenderId** | **NSString*** | The ID of the tender to refund. | 
**reason** | **NSString*** | A description of the reason for the refund. | [optional] 
**amountMoney** | [**SQCMoney***](SQCMoney.md) | The amount of money to refund. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


