# SQCTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSString*** | The transaction&#39;s unique ID. | [optional] 
**locationId** | **NSString*** | The ID of the transaction&#39;s associated location. | [optional] 
**createdAt** | **NSString*** | The time when the transaction was created, in RFC 3339 format. | [optional] 
**tenders** | [**NSArray&lt;SQCTender&gt;***](SQCTender.md) | Descriptions of the tenders used to pay for the transaction. | [optional] 
**refunds** | [**NSArray&lt;SQCRefund&gt;***](SQCRefund.md) | An array of any refunds associated with the transaction. | [optional] 
**referenceId** | **NSString*** | If the transaction was created with the **Charge** endpoint, this value is the same as the value provided as the &#x60;reference_id&#x60; parameter in the request to that endpoint. | [optional] 
**product** | **NSString*** | The product that processed the transaction. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


