//
//  SimpleALAttribute.h
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

@interface SimpleALViewProperty : NSObject

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)constant;

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)constant;

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)constant;
- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

- (NSLayoutConstraint *)equalToValue:(CGFloat)value;
- (NSLayoutConstraint *)lessThanOrEqualToValue:(CGFloat)value;
- (NSLayoutConstraint *)greaterThanOrEqualToValue:(CGFloat)value;
@end
