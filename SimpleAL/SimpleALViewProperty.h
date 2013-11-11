//
//  SimpleALAttribute.h
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

@interface SimpleALViewProperty : NSObject
@property (nonatomic, strong) UIView *view;
@property (nonatomic, assign) NSLayoutAttribute attribute;

+ (SimpleALViewProperty *)attributeWithView:(UIView *)view nsLayoutAttribute:(NSLayoutAttribute)attrib;

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset;

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset;

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset;

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset;

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset;
- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset;

- (NSLayoutConstraint *)equalToValue:(CGFloat)value;
- (NSLayoutConstraint *)lessThanOrEqualToValue:(CGFloat)value;
- (NSLayoutConstraint *)greaterThanOrEqualToValue:(CGFloat)value;
@end
