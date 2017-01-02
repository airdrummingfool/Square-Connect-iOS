#import "SQCTenderCashDetails.h"

@implementation SQCTenderCashDetails

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"buyer_tendered_money": @"buyerTenderedMoney", @"change_back_money": @"changeBackMoney" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"buyerTenderedMoney", @"changeBackMoney"];
  return [optionalProperties containsObject:propertyName];
}

@end
