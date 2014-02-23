//
//  SimpleALViewPropertyArray.h
//  SimpleAL
//
//  Created by Alexander Haefner on 11/10/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

@class SimpleALViewProperty;

@interface SimpleALViewPropertyArray : NSObject

- (NSArray /*of NSLayoutConstraint*/ *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSArray /*of NSLayoutConstraint*/ *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)offset;

- (NSArray /*of NSLayoutConstraint*/ *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)offset;

- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)offset;

- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)offset;

- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)offset;
- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)offset;

- (NSArray /*of NSLayoutConstraint*/ *)equalToValue:(CGFloat)value;
- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToValue:(CGFloat)value;
- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToValue:(CGFloat)value;
@end
