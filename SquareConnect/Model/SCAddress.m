#import "SCAddress.h"

@implementation SCAddress

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"address_line_1": @"addressLine1", @"address_line_2": @"addressLine2", @"address_line_3": @"addressLine3", @"locality": @"locality", @"sublocality": @"sublocality", @"sublocality_2": @"sublocality2", @"sublocality_3": @"sublocality3", @"administrative_district_level_1": @"administrativeDistrictLevel1", @"administrative_district_level_2": @"administrativeDistrictLevel2", @"administrative_district_level_3": @"administrativeDistrictLevel3", @"postal_code": @"postalCode", @"country": @"country" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"addressLine1", @"addressLine2", @"addressLine3", @"locality", @"sublocality", @"sublocality2", @"sublocality3", @"administrativeDistrictLevel1", @"administrativeDistrictLevel2", @"administrativeDistrictLevel3", @"postalCode", @"country"];
  return [optionalProperties containsObject:propertyName];
}

@end
