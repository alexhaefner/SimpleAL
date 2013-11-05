//
//  NSLayoutConstraint+AHAL.h
//  AHAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SimpleALViewProperty;

@interface NSLayoutConstraint (SimpleAL)
#pragma mark - private methods

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewPropertyOne toViewPropertyTwo:(SimpleALViewProperty *)viewPropertyTwo relation:(NSLayoutRelation)relation offset:(CGFloat)offset;

#pragma mark - public methods

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToViewProperty:(SimpleALViewProperty *)viewProperty2;

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset;

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset;

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset;

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToValue:(CGFloat)value;
+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToValue:(CGFloat)value;
+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToValue:(CGFloat)value;
@end
