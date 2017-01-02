#import "SQCCreateCustomerRequest.h"

@implementation SQCCreateCustomerRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"given_name": @"givenName", @"family_name": @"familyName", @"company_name": @"companyName", @"nickname": @"nickname", @"email_address": @"emailAddress", @"address": @"address", @"phone_number": @"phoneNumber", @"reference_id": @"referenceId", @"note": @"note" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"givenName", @"familyName", @"companyName", @"nickname", @"emailAddress", @"address", @"phoneNumber", @"referenceId", @"note"];
  return [optionalProperties containsObject:propertyName];
}

@end
