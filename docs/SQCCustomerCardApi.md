# SQCCustomerCardApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomerCard**](SQCCustomerCardApi.md#createcustomercard) | **POST** /v2/customers/{customer_id}/cards | CreateCustomerCard
[**deleteCustomerCard**](SQCCustomerCardApi.md#deletecustomercard) | **DELETE** /v2/customers/{customer_id}/cards/{card_id} | DeleteCustomerCard


# **createCustomerCard**
```objc
-(NSNumber*) createCustomerCardWithAuthorization: (NSString*) authorization
    customerId: (NSString*) customerId
    body: (SQCCreateCustomerCardRequest*) body
        completionHandler: (void (^)(SQCCreateCustomerCardResponse* output, NSError* error)) handler;
```

CreateCustomerCard

Adds a card on file to an existing customer.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* customerId = @"customerId_example"; // 
SQCCreateCustomerCardRequest* body = [[SQCCreateCustomerCardRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCCustomerCardApi*apiInstance = [[SQCCustomerCardApi alloc] init];

// CreateCustomerCard
[apiInstance createCustomerCardWithAuthorization:authorization
              customerId:customerId
              body:body
          completionHandler: ^(SQCCreateCustomerCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCCustomerCardApi->createCustomerCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customerId** | **NSString***|  | 
 **body** | [**SQCCreateCustomerCardRequest***](SQCCreateCustomerCardRequest*.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCCreateCustomerCardResponse***](SQCCreateCustomerCardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerCard**
```objc
-(NSNumber*) deleteCustomerCardWithAuthorization: (NSString*) authorization
    customerId: (NSString*) customerId
    cardId: (NSString*) cardId
        completionHandler: (void (^)(SQCDeleteCustomerCardResponse* output, NSError* error)) handler;
```

DeleteCustomerCard

Removes a card on file from a customer.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* customerId = @"customerId_example"; // 
NSString* cardId = @"cardId_example"; // 

SQCCustomerCardApi*apiInstance = [[SQCCustomerCardApi alloc] init];

// DeleteCustomerCard
[apiInstance deleteCustomerCardWithAuthorization:authorization
              customerId:customerId
              cardId:cardId
          completionHandler: ^(SQCDeleteCustomerCardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCCustomerCardApi->deleteCustomerCard: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customerId** | **NSString***|  | 
 **cardId** | **NSString***|  | 

### Return type

[**SQCDeleteCustomerCardResponse***](SQCDeleteCustomerCardResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

