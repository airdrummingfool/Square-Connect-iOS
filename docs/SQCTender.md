# SQCTender

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The tender&#39;s unique ID. | [optional] 
**locationId** | **NSString*** | The ID of the tender&#39;s associated location. | [optional] 
**transactionId** | **NSString*** | The ID of the tender&#39;s associated transaction. | [optional] 
**createdAt** | **NSString*** | The time when the tender was created, in RFC 3339 format. | [optional] 
**note** | **NSString*** | An optional note associated with the tender at the time of payment. | [optional] 
**amountMoney** | [**SQCMoney***](SQCMoney.md) | The amount of the tender. | [optional] 
**processingFeeMoney** | [**SQCMoney***](SQCMoney.md) | The amount of any Square processing fees applied to the tender. | [optional] 
**customerId** | **NSString*** | If the tender represents a customer&#39;s card on file, this is the ID of the associated customer. | [optional] 
**type** | **NSString*** | The type of tender. | 
**cardDetails** | [**SQCTenderCardDetails***](SQCTenderCardDetails.md) | The details of the card tender. This value is present only if the value of &#x60;type&#x60; is &#x60;CARD&#x60;. | [optional] 
**cashDetails** | [**SQCTenderCashDetails***](SQCTenderCashDetails.md) | The details of the cash tender. This value is present only if the value of &#x60;type&#x60; is &#x60;CASH&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


