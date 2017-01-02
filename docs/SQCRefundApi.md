# SQCRefundApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRefund**](SQCRefundApi.md#createrefund) | **POST** /v2/locations/{location_id}/transactions/{transaction_id}/refund | CreateRefund
[**listRefunds**](SQCRefundApi.md#listrefunds) | **GET** /v2/locations/{location_id}/refunds | ListRefunds


# **createRefund**
```objc
-(NSNumber*) createRefundWithAuthorization: (NSString*) authorization
    locationId: (NSString*) locationId
    transactionId: (NSString*) transactionId
    body: (SQCCreateRefundRequest*) body
        completionHandler: (void (^)(SQCCreateRefundResponse* output, NSError* error)) handler;
```

CreateRefund

Initiates a refund for a previously charged tender.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* locationId = @"locationId_example"; // The ID of the original transaction's associated location.
NSString* transactionId = @"transactionId_example"; // 
SQCCreateRefundRequest* body = [[SQCCreateRefundRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCRefundApi*apiInstance = [[SQCRefundApi alloc] init];

// CreateRefund
[apiInstance createRefundWithAuthorization:authorization
              locationId:locationId
              transactionId:transactionId
              body:body
          completionHandler: ^(SQCCreateRefundResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCRefundApi->createRefund: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **locationId** | **NSString***| The ID of the original transaction&#39;s associated location. | 
 **transactionId** | **NSString***|  | 
 **body** | [**SQCCreateRefundRequest***](SQCCreateRefundRequest*.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCCreateRefundResponse***](SQCCreateRefundResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRefunds**
```objc
-(NSNumber*) listRefundsWithAuthorization: (NSString*) authorization
    locationId: (NSString*) locationId
    beginTime: (NSString*) beginTime
    endTime: (NSString*) endTime
    sortOrder: (NSString*) sortOrder
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQCListRefundsResponse* output, NSError* error)) handler;
```

ListRefunds

Lists refunds for one of a business's locations.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* locationId = @"locationId_example"; // The ID of the location to list refunds for.
NSString* beginTime = @"beginTime_example"; // The beginning of the requested reporting period, in RFC 3339 format. (optional)
NSString* endTime = @"endTime_example"; // The end of the requested reporting period, in RFC 3339 format. (optional)
NSString* sortOrder = @"sortOrder_example"; // The order in which results are listed in the response. (optional)
NSString* cursor = @"cursor_example"; // A pagination cursor to retrieve the next set of results for your original query to the endpoint. (optional)

SQCRefundApi*apiInstance = [[SQCRefundApi alloc] init];

// ListRefunds
[apiInstance listRefundsWithAuthorization:authorization
              locationId:locationId
              beginTime:beginTime
              endTime:endTime
              sortOrder:sortOrder
              cursor:cursor
          completionHandler: ^(SQCListRefundsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCRefundApi->listRefunds: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **locationId** | **NSString***| The ID of the location to list refunds for. | 
 **beginTime** | **NSString***| The beginning of the requested reporting period, in RFC 3339 format. | [optional] 
 **endTime** | **NSString***| The end of the requested reporting period, in RFC 3339 format. | [optional] 
 **sortOrder** | **NSString***| The order in which results are listed in the response. | [optional] 
 **cursor** | **NSString***| A pagination cursor to retrieve the next set of results for your original query to the endpoint. | [optional] 

### Return type

[**SQCListRefundsResponse***](SQCListRefundsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

