# SQCTransactionApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**captureTransaction**](SQCTransactionApi.md#capturetransaction) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/capture | CaptureTransaction
[**charge**](SQCTransactionApi.md#charge) | **POST** /v2/locations/{location_id}/transactions | Charge
[**listTransactions**](SQCTransactionApi.md#listtransactions) | **GET** /v2/locations/{location_id}/transactions | ListTransactions
[**retrieveTransaction**](SQCTransactionApi.md#retrievetransaction) | **GET** /v2/locations/{location_id}/transactions/{transaction_id} | RetrieveTransaction
[**voidTransaction**](SQCTransactionApi.md#voidtransaction) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/void | VoidTransaction


# **captureTransaction**
```objc
-(NSNumber*) captureTransactionWithAuthorization: (NSString*) authorization
    locationId: (NSString*) locationId
    transactionId: (NSString*) transactionId
        completionHandler: (void (^)(SQCCaptureTransactionResponse* output, NSError* error)) handler;
```

CaptureTransaction

Captures a transaction that was created with the **Charge** endpoint with a `delay_capture` value of `true`.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* locationId = @"locationId_example"; // 
NSString* transactionId = @"transactionId_example"; // 

SQCTransactionApi*apiInstance = [[SQCTransactionApi alloc] init];

// CaptureTransaction
[apiInstance captureTransactionWithAuthorization:authorization
              locationId:locationId
              transactionId:transactionId
          completionHandler: ^(SQCCaptureTransactionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCTransactionApi->captureTransaction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **locationId** | **NSString***|  | 
 **transactionId** | **NSString***|  | 

### Return type

[**SQCCaptureTransactionResponse***](SQCCaptureTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **charge**
```objc
-(NSNumber*) chargeWithAuthorization: (NSString*) authorization
    locationId: (NSString*) locationId
    body: (SQCChargeRequest*) body
        completionHandler: (void (^)(SQCChargeResponse* output, NSError* error)) handler;
```

Charge

Charges a card represented by a token.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* locationId = @"locationId_example"; // The ID of the location to associate the transaction with.
SQCChargeRequest* body = [[SQCChargeRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCTransactionApi*apiInstance = [[SQCTransactionApi alloc] init];

// Charge
[apiInstance chargeWithAuthorization:authorization
              locationId:locationId
              body:body
          completionHandler: ^(SQCChargeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCTransactionApi->charge: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **locationId** | **NSString***| The ID of the location to associate the transaction with. | 
 **body** | [**SQCChargeRequest***](SQCChargeRequest*.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCChargeResponse***](SQCChargeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTransactions**
```objc
-(NSNumber*) listTransactionsWithAuthorization: (NSString*) authorization
    locationId: (NSString*) locationId
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQCListTransactionsResponse* output, NSError* error)) handler;
```

ListTransactions

Lists transactions for a particular location.  When making a request to this endpoint, your request body **must** include either the `cursor` parameter, or it must include both `begin_time` and `end_time` with an optional `sort_order`.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* locationId = @"locationId_example"; // The ID of the location to list transactions for.
NSString* beginTime = @"beginTime_example"; // The beginning of the requested reporting period, in RFC 3339 format. (optional)
NSString* endTime = @"endTime_example"; // The end of the requested reporting period, in RFC 3339 format. (optional)
NSString* sortOrder = @"sortOrder_example"; // The order in which results are listed in the response (`ASC` for chronological, `DESC` for reverse-chronological). (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor to retrieve the next set of results for your original query to the endpoint. (optional)

SQCTransactionApi*apiInstance = [[SQCTransactionApi alloc] init];

// ListTransactions
[apiInstance listTransactionsWithAuthorization:authorization
              locationId:locationId
              beginTime:beginTime
              endTime:endTime
              sortOrder:sortOrder
              cursor:cursor
          completionHandler: ^(SQCListTransactionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCTransactionApi->listTransactions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **locationId** | **NSString***| The ID of the location to list transactions for. | 
 **beginTime** | **NSString***| The beginning of the requested reporting period, in RFC 3339 format. | [optional] 
 **endTime** | **NSString***| The end of the requested reporting period, in RFC 3339 format. | [optional] 
 **sortOrder** | **NSString***| The order in which results are listed in the response (&#x60;ASC&#x60; for chronological, &#x60;DESC&#x60; for reverse-chronological). | [optional] 
 **cursor** | **NSString***| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**SQCListTransactionsResponse***](SQCListTransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveTransaction**
```objc
-(NSNumber*) retrieveTransactionWithAuthorization: (NSString*) authorization
    locationId: (NSString*) locationId
    transactionId: (NSString*) transactionId
        completionHandler: (void (^)(SQCRetrieveTransactionResponse* output, NSError* error)) handler;
```

RetrieveTransaction

Retrieves details for a single transaction.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* locationId = @"locationId_example"; // 
NSString* transactionId = @"transactionId_example"; // 

SQCTransactionApi*apiInstance = [[SQCTransactionApi alloc] init];

// RetrieveTransaction
[apiInstance retrieveTransactionWithAuthorization:authorization
              locationId:locationId
              transactionId:transactionId
          completionHandler: ^(SQCRetrieveTransactionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCTransactionApi->retrieveTransaction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **locationId** | **NSString***|  | 
 **transactionId** | **NSString***|  | 

### Return type

[**SQCRetrieveTransactionResponse***](SQCRetrieveTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voidTransaction**
```objc
-(NSNumber*) voidTransactionWithAuthorization: (NSString*) authorization
    locationId: (NSString*) locationId
    transactionId: (NSString*) transactionId
        completionHandler: (void (^)(SQCVoidTransactionResponse* output, NSError* error)) handler;
```

VoidTransaction

Cancels a transaction that was created with the **Charge** endpoint with a `delay_capture` value of `true`.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* locationId = @"locationId_example"; // 
NSString* transactionId = @"transactionId_example"; // 

SQCTransactionApi*apiInstance = [[SQCTransactionApi alloc] init];

// VoidTransaction
[apiInstance voidTransactionWithAuthorization:authorization
              locationId:locationId
              transactionId:transactionId
          completionHandler: ^(SQCVoidTransactionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCTransactionApi->voidTransaction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **locationId** | **NSString***|  | 
 **transactionId** | **NSString***|  | 

### Return type

[**SQCVoidTransactionResponse***](SQCVoidTransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

