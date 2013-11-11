//
//  NSLayoutConstraint+SimpleAL.h
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

@class SimpleALViewProperty;

@interface NSLayoutConstraint (SimpleAL)
#pragma mark - private methods

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 toViewProperty:(SimpleALViewProperty *)viewProperty2 relation:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier offset:(CGFloat)offset;

#pragma mark - public methods

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset;

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset;

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset;

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToValue:(CGFloat)value;
+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToValue:(CGFloat)value;
+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToValue:(CGFloat)value;
@end
