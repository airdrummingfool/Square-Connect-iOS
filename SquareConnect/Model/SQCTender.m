#import "SQCTender.h"

@implementation SQCTender

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"location_id": @"locationId", @"transaction_id": @"transactionId", @"created_at": @"createdAt", @"note": @"note", @"amount_money": @"amountMoney", @"processing_fee_money": @"processingFeeMoney", @"customer_id": @"customerId", @"type": @"type", @"card_details": @"cardDetails", @"cash_details": @"cashDetails" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"locationId", @"transactionId", @"createdAt", @"note", @"amountMoney", @"processingFeeMoney", @"customerId", @"cardDetails", @"cashDetails"];
  return [optionalProperties containsObject:propertyName];
}

@end
