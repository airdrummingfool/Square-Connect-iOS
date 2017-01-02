# SCChargeRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**idempotencyKey** | **NSString*** | A value you specify that uniquely identifies this transaction among transactions you&#39;ve created.  If you&#39;re unsure whether a particular transaction succeeded, you can reattempt it with the same idempotency key without worrying about double-charging the buyer. Note that *all other fields* must also remain identical in your followup request, or an error will occur. | 
**amountMoney** | [**SCMoney***](SCMoney.md) | The amount of money to collect in the transaction. | 
**cardNonce** | **NSString*** | A nonce representing the credit card to charge for this transaction. Do not provide a value for this field if you provide a value for &#x60;customer_card_id&#x60;. | [optional] 
**customerCardId** | **NSString*** | The ID of the customer card on file to charge for this transaction. Do not provide a value for this field if you provide a value for &#x60;card_nonce&#x60;. | [optional] 
**delayCapture** | **NSNumber*** | If &#x60;true&#x60;, the request will only perform an Auth on the provided card. You can then later perform either a Capture (with the *CaptureTransaction** endpoint) or a Void (with the **VoidTransation** endpoint. | [optional] 
**referenceId** | **NSString*** | An optional ID you can associate with the transaction for your own purposes (such as to associate the transaction with an entity ID in your own database). | [optional] 
**note** | **NSString*** | An optional note to associate with the transaction. | [optional] 
**customerId** | **NSString*** | The ID of the customer to associate this transaction with. This field is required if you provide a value for &#x60;customer_card_id&#x60;, and optional otherwise. | [optional] 
**billingAddress** | [**SCAddress***](SCAddress.md) | If available, Postal code in the billing address for US and Canada payments may reduce decline rate. | [optional] 
**shippingAddress** | [**SCAddress***](SCAddress.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


