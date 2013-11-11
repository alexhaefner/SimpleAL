//
//  SimpleALViewPropertyArray.m
//  SimpleAL
//
//  Created by Alexander Haefner on 11/10/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "SimpleALViewPropertyArray.h"
#import "SimpleALViewPropertyArray_InternalArray.h"

#import "SimpleALViewProperty.h"

@implementation SimpleALViewPropertyArray

- (NSArray /*of NSLayoutConstraint*/ *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 {
  return [self equalToViewProperty:viewProperty2 multiplier:1.0 offset:0.0];
}

- (NSArray /*of NSLayoutConstraint*/ *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
  return [self equalToViewProperty:viewProperty2 multiplier:1.0 offset:offset];
}

- (NSArray /*of NSLayoutConstraint*/ *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self.simpleAlViewProperties) {
    [array addObject:[viewProperty equalToViewProperty:viewProperty2 multiplier:multiplier offset:offset]];
  }
  return array;
}

- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
  return [self lessThanOrEqualToViewProperty:viewProperty2 multiplier:1.0 offset:0.0];
}

- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
  return [self lessThanOrEqualToViewProperty:viewProperty2 multiplier:1.0 offset:offset];
}

- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self.simpleAlViewProperties) {
    [array addObject:[viewProperty lessThanOrEqualToViewProperty:viewProperty2 multiplier:multiplier offset:offset]];
  }
  return array;
}

- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
  return [self greaterThanOrEqualToViewProperty:viewProperty2 multiplier:1.0 offset:0.0];
}

- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
  return [self greaterThanOrEqualToViewProperty:viewProperty2 multiplier:1.0 offset:offset];
}

- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self.simpleAlViewProperties) {
    [array addObject:[viewProperty greaterThanOrEqualToViewProperty:viewProperty2 multiplier:multiplier offset:offset]];
  }
  return array;
}

- (NSArray /*of NSLayoutConstraint*/ *)equalToValue:(CGFloat)value {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self.simpleAlViewProperties) {
    [array addObject:[viewProperty equalToValue:value]];
  }
  return array;
}

- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToValue:(CGFloat)value {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self.simpleAlViewProperties) {
    [array addObject:[viewProperty lessThanOrEqualToValue:value]];
  }
  return array;
}

- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToValue:(CGFloat)value {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self.simpleAlViewProperties) {
    [array addObject:[viewProperty greaterThanOrEqualToValue:value]];
  }
  return array;
}
@end
