# SCCustomerApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](SCCustomerApi.md#createcustomer) | **POST** /v2/customers | CreateCustomer
[**deleteCustomer**](SCCustomerApi.md#deletecustomer) | **DELETE** /v2/customers/{customer_id} | DeleteCustomer
[**listCustomers**](SCCustomerApi.md#listcustomers) | **GET** /v2/customers | ListCustomers
[**retrieveCustomer**](SCCustomerApi.md#retrievecustomer) | **GET** /v2/customers/{customer_id} | RetrieveCustomer
[**updateCustomer**](SCCustomerApi.md#updatecustomer) | **PUT** /v2/customers/{customer_id} | UpdateCustomer


# **createCustomer**
```objc
-(NSNumber*) createCustomerWithAuthorization: (NSString*) authorization
    body: (SCCreateCustomerRequest*) body
        completionHandler: (void (^)(SCCreateCustomerResponse* output, NSError* error)) handler;
```

CreateCustomer

Creates a new customer for the business, which can have associated cards on file.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
SCCreateCustomerRequest* body = [[SCCreateCustomerRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SCCustomerApi*apiInstance = [[SCCustomerApi alloc] init];

// CreateCustomer
[apiInstance createCustomerWithAuthorization:authorization
              body:body
          completionHandler: ^(SCCreateCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SCCustomerApi->createCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **body** | [**SCCreateCustomerRequest***](SCCreateCustomerRequest*.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SCCreateCustomerResponse***](SCCreateCustomerResponse.md)

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
        completionHandler: (void (^)(SCDeleteCustomerResponse* output, NSError* error)) handler;
```

DeleteCustomer

Deletes a customer from a business.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* customerId = @"customerId_example"; // 

SCCustomerApi*apiInstance = [[SCCustomerApi alloc] init];

// DeleteCustomer
[apiInstance deleteCustomerWithAuthorization:authorization
              customerId:customerId
          completionHandler: ^(SCDeleteCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SCCustomerApi->deleteCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customerId** | **NSString***|  | 

### Return type

[**SCDeleteCustomerResponse***](SCDeleteCustomerResponse.md)

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
        completionHandler: (void (^)(SCListCustomersResponse* output, NSError* error)) handler;
```

ListCustomers

Lists a business's customers.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* cursor = @"cursor_example"; //  (optional)

SCCustomerApi*apiInstance = [[SCCustomerApi alloc] init];

// ListCustomers
[apiInstance listCustomersWithAuthorization:authorization
              cursor:cursor
          completionHandler: ^(SCListCustomersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SCCustomerApi->listCustomers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **cursor** | **NSString***|  | [optional] 

### Return type

[**SCListCustomersResponse***](SCListCustomersResponse.md)

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
        completionHandler: (void (^)(SCRetrieveCustomerResponse* output, NSError* error)) handler;
```

RetrieveCustomer

Returns details for a single customer.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* customerId = @"customerId_example"; // 

SCCustomerApi*apiInstance = [[SCCustomerApi alloc] init];

// RetrieveCustomer
[apiInstance retrieveCustomerWithAuthorization:authorization
              customerId:customerId
          completionHandler: ^(SCRetrieveCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SCCustomerApi->retrieveCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customerId** | **NSString***|  | 

### Return type

[**SCRetrieveCustomerResponse***](SCRetrieveCustomerResponse.md)

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
    body: (SCUpdateCustomerRequest*) body
        completionHandler: (void (^)(SCUpdateCustomerResponse* output, NSError* error)) handler;
```

UpdateCustomer

Updates the details of an existing customer.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.
NSString* customerId = @"customerId_example"; // The customer to update.
SCUpdateCustomerRequest* body = [[SCUpdateCustomerRequest alloc] init]; // An object containing the fields to POST for the request.  See the corresponding object definition for field details.

SCCustomerApi*apiInstance = [[SCCustomerApi alloc] init];

// UpdateCustomer
[apiInstance updateCustomerWithAuthorization:authorization
              customerId:customerId
              body:body
          completionHandler: ^(SCUpdateCustomerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SCCustomerApi->updateCustomer: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 
 **customerId** | **NSString***| The customer to update. | 
 **body** | [**SCUpdateCustomerRequest***](SCUpdateCustomerRequest*.md)| An object containing the fields to POST for the request.  See the corresponding object definition for field details. | 

### Return type

[**SCUpdateCustomerResponse***](SCUpdateCustomerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

