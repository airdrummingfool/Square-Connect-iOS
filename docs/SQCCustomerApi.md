# SQCCustomerApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](SQCCustomerApi.md#createcustomer) | **POST** /v2/customers | CreateCustomer
[**deleteCustomer**](SQCCustomerApi.md#deletecustomer) | **DELETE** /v2/customers/{customer_id} | DeleteCustomer
[**listCustomers**](SQCCustomerApi.md#listcustomers) | **GET** /v2/customers | ListCustomers
[**retrieveCustomer**](SQCCustomerApi.md#retrievecustomer) | **GET** /v2/customers/{customer_id} | RetrieveCustomer
[**updateCustomer**](SQCCustomerApi.md#updatecustomer) | **PUT** /v2/customers/{customer_id} | UpdateCustomer


# **createCustomer**
```objc
-(NSNumber*) createCustomerWithAuthorization: (NSString*) authorization
    body: (SQCCreateCustomerRequest*) body
        completionHandler: (void (^)(SQCCreateCustomerResponse* output, NSError* error)) handler;
```

CreateCustomer

Creates a new customer for the business, which can have associated cards on file.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
SQCCreateCustomerRequest* body = [[SQCCreateCustomerRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCCustomerApi*apiInstance = [[SQCCustomerApi alloc] init];

// CreateCustomer
[apiInstance createCustomerWithAuthorization:authorization
              body:body
          completionHandler: ^(SQCCreateCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCCustomerApi->createCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **body** | [**SQCCreateCustomerRequest***](SQCCreateCustomerRequest*.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCCreateCustomerResponse***](SQCCreateCustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomer**
```objc
-(NSNumber*) deleteCustomerWithAuthorization: (NSString*) authorization
    customerId: (NSString*) customerId
        completionHandler: (void (^)(SQCDeleteCustomerResponse* output, NSError* error)) handler;
```

DeleteCustomer

Deletes a customer from a business.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* customerId = @"customerId_example"; // 

SQCCustomerApi*apiInstance = [[SQCCustomerApi alloc] init];

// DeleteCustomer
[apiInstance deleteCustomerWithAuthorization:authorization
              customerId:customerId
          completionHandler: ^(SQCDeleteCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCCustomerApi->deleteCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customerId** | **NSString***|  | 

### Return type

[**SQCDeleteCustomerResponse***](SQCDeleteCustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCustomers**
```objc
-(NSNumber*) listCustomersWithAuthorization: (NSString*) authorization
    cursor: (NSString*) cursor
        completionHandler: (void (^)(SQCListCustomersResponse* output, NSError* error)) handler;
```

ListCustomers

Lists a business's customers.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* cursor = @"cursor_example"; //  (optional)

SQCCustomerApi*apiInstance = [[SQCCustomerApi alloc] init];

// ListCustomers
[apiInstance listCustomersWithAuthorization:authorization
              cursor:cursor
          completionHandler: ^(SQCListCustomersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCCustomerApi->listCustomers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **cursor** | **NSString***|  | [optional] 

### Return type

[**SQCListCustomersResponse***](SQCListCustomersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveCustomer**
```objc
-(NSNumber*) retrieveCustomerWithAuthorization: (NSString*) authorization
    customerId: (NSString*) customerId
        completionHandler: (void (^)(SQCRetrieveCustomerResponse* output, NSError* error)) handler;
```

RetrieveCustomer

Returns details for a single customer.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* customerId = @"customerId_example"; // 

SQCCustomerApi*apiInstance = [[SQCCustomerApi alloc] init];

// RetrieveCustomer
[apiInstance retrieveCustomerWithAuthorization:authorization
              customerId:customerId
          completionHandler: ^(SQCRetrieveCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCCustomerApi->retrieveCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customerId** | **NSString***|  | 

### Return type

[**SQCRetrieveCustomerResponse***](SQCRetrieveCustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomer**
```objc
-(NSNumber*) updateCustomerWithAuthorization: (NSString*) authorization
    customerId: (NSString*) customerId
    body: (SQCUpdateCustomerRequest*) body
        completionHandler: (void (^)(SQCUpdateCustomerResponse* output, NSError* error)) handler;
```

UpdateCustomer

Updates the details of an existing customer.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* customerId = @"customerId_example"; // The customer to update.
SQCUpdateCustomerRequest* body = [[SQCUpdateCustomerRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SQCCustomerApi*apiInstance = [[SQCCustomerApi alloc] init];

// UpdateCustomer
[apiInstance updateCustomerWithAuthorization:authorization
              customerId:customerId
              body:body
          completionHandler: ^(SQCUpdateCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCCustomerApi->updateCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customerId** | **NSString***| The customer to update. | 
 **body** | [**SQCUpdateCustomerRequest***](SQCUpdateCustomerRequest*.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SQCUpdateCustomerResponse***](SQCUpdateCustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

