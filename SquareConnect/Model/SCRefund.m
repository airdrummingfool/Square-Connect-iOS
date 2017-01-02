#import "SCRefund.h"

@implementation SCRefund

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"location_id": @"locationId", @"transaction_id": @"transactionId", @"tender_id": @"tenderId", @"created_at": @"createdAt", @"reason": @"reason", @"amount_money": @"amountMoney", @"status": @"status", @"processing_fee_money": @"processingFeeMoney" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"createdAt", @"processingFeeMoney"];
  return [optionalProperties containsObject:propertyName];
}

@end
