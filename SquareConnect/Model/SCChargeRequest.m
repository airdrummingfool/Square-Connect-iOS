#import "SCChargeRequest.h"

@implementation SCChargeRequest

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idempotency_key": @"idempotencyKey", @"amount_money": @"amountMoney", @"card_nonce": @"cardNonce", @"customer_card_id": @"customerCardId", @"delay_capture": @"delayCapture", @"reference_id": @"referenceId", @"note": @"note", @"customer_id": @"customerId", @"billing_address": @"billingAddress", @"shipping_address": @"shippingAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cardNonce", @"customerCardId", @"delayCapture", @"referenceId", @"note", @"customerId", @"billingAddress", @"shippingAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
