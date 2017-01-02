#import "SQCCreateRefundRequest.h"

@implementation SQCCreateRefundRequest

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idempotency_key": @"idempotencyKey", @"tender_id": @"tenderId", @"reason": @"reason", @"amount_money": @"amountMoney" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"reason", ];
  return [optionalProperties containsObject:propertyName];
}

@end
