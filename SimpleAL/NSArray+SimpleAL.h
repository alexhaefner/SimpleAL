//
//  NSArray+SimpleAL.h
//  SimpleAL
//
//  Created by Alexander Haefner on 11/10/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SimpleALViewProperty.h"

@interface NSArray (SimpleAL)

- (NSArray /*of NSLayoutConstraint*/ *)al_equalToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSArray /*of NSLayoutConstraint*/ *)al_equalToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset;

- (NSArray /*of NSLayoutConstraint*/ *)al_equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset;

- (NSArray /*of NSLayoutConstraint*/ *)al_lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSArray /*of NSLayoutConstraint*/ *)al_lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset;

- (NSArray /*of NSLayoutConstraint*/ *)al_lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset;

- (NSArray /*of NSLayoutConstraint*/ *)al_greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSArray /*of NSLayoutConstraint*/ *)al_greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset;
- (NSArray /*of NSLayoutConstraint*/ *)al_greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multipler:(CGFloat)multiplier offset:(CGFloat)offset;

- (NSArray /*of NSLayoutConstraint*/ *)al_equalToValue:(CGFloat)value;
- (NSArray /*of NSLayoutConstraint*/ *)al_lessThanOrEqualToValue:(CGFloat)value;
- (NSArray /*of NSLayoutConstraint*/ *)al_greaterThanOrEqualToValue:(CGFloat)value;
@end
