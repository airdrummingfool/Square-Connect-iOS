#import "SQCCard.h"

@implementation SQCCard

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"card_brand": @"cardBrand", @"last_4": @"last4", @"exp_month": @"expMonth", @"exp_year": @"expYear", @"cardholder_name": @"cardholderName", @"billing_address": @"billingAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"cardBrand", @"last4", @"expMonth", @"expYear", @"cardholderName", @"billingAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
