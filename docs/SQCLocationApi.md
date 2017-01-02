# SQCLocationApi

All URIs are relative to *https://connect.squareup.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listLocations**](SQCLocationApi.md#listlocations) | **GET** /v2/locations | ListLocations


# **listLocations**
```objc
-(NSNumber*) listLocationsWithAuthorization: (NSString*) authorization
        completionHandler: (void (^)(SQCListLocationsResponse* output, NSError* error)) handler;
```

ListLocations

Provides summary information for all of a business's locations.

### Example 
```objc

NSString* authorization = @"authorization_example"; // The value to provide in the Authorization header of your request. This value should follow the format `Bearer YOUR_ACCESS_TOKEN_HERE`.

SQCLocationApi*apiInstance = [[SQCLocationApi alloc] init];

// ListLocations
[apiInstance listLocationsWithAuthorization:authorization
          completionHandler: ^(SQCListLocationsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SQCLocationApi->listLocations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **NSString***| The value to provide in the Authorization header of your request. This value should follow the format &#x60;Bearer YOUR_ACCESS_TOKEN_HERE&#x60;. | 

### Return type

[**SQCListLocationsResponse***](SQCListLocationsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

