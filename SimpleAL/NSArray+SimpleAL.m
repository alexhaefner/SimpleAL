//
//  NSArray+SimpleAL.m
//  SimpleAL
//
//  Created by Alexander Haefner on 11/10/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "NSArray+SimpleAL.h"

#import "SimpleALViewProperty.h"

@implementation NSArray (SimpleAL)

- (NSArray /*of NSLayoutConstraint*/ *)al_equalToViewProperty:(SimpleALViewProperty *)viewProperty2 {
  return [self al_equalToViewProperty:viewProperty2 multiplier:1.0 offset:0.0];
}

- (NSArray /*of NSLayoutConstraint*/ *)al_equalToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
  return [self al_equalToViewProperty:viewProperty2 multiplier:1.0 offset:offset];
}

- (NSArray /*of NSLayoutConstraint*/ *)al_equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self) {
    [array addObject:[viewProperty equalToViewProperty:viewProperty2 multiplier:multiplier offset:offset]];
  }
  return array;
}

- (NSArray /*of NSLayoutConstraint*/ *)al_lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
  return [self al_lessThanOrEqualToViewProperty:viewProperty2 multiplier:1.0 offset:0.0];
}

- (NSArray /*of NSLayoutConstraint*/ *)al_lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
  return [self al_lessThanOrEqualToViewProperty:viewProperty2 multiplier:1.0 offset:offset];
}

- (NSArray /*of NSLayoutConstraint*/ *)al_lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self) {
    [array addObject:[viewProperty lessThanOrEqualToViewProperty:viewProperty2 multiplier:multiplier offset:offset]];
  }
  return array;
}

- (NSArray /*of NSLayoutConstraint*/ *)al_greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
  return [self al_greaterThanOrEqualToViewProperty:viewProperty2 multipler:1.0 offset:0.0];
}

- (NSArray /*of NSLayoutConstraint*/ *)al_greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
  return [self al_greaterThanOrEqualToViewProperty:viewProperty2 multipler:1.0 offset:offset];
}
- (NSArray /*of NSLayoutConstraint*/ *)al_greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multipler:(CGFloat)multiplier offset:(CGFloat)offset {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self) {
    [array addObject:[viewProperty greaterThanOrEqualToViewProperty:viewProperty2 multipler:multiplier offset:offset]];
  }
  return array;
}

- (NSArray /*of NSLayoutConstraint*/ *)al_equalToValue:(CGFloat)value {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self) {
    [array addObject:[viewProperty equalToValue:value]];
  }
  return array;
}
- (NSArray /*of NSLayoutConstraint*/ *)al_lessThanOrEqualToValue:(CGFloat)value {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self) {
    [array addObject:[viewProperty lessThanOrEqualToValue:value]];
  }
  return array;
}
- (NSArray /*of NSLayoutConstraint*/ *)al_greaterThanOrEqualToValue:(CGFloat)value {
  NSMutableArray *array = [NSMutableArray array];
  for (SimpleALViewProperty *viewProperty in self) {
    [array addObject:[viewProperty greaterThanOrEqualToValue:value]];
  }
  return array;
}
@end
