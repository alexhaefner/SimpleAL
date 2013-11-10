//
//  NSLayoutConstraint+SimpleAL.m
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NSLayoutConstraint+SimpleAL.h"
#import "SimpleALViewProperty.h"
#import "UIView+SimpleAL.h"

@implementation NSLayoutConstraint (SimpleAL)
#pragma mark - private methods

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewPropertyOne toViewPropertyTwo:(SimpleALViewProperty *)viewPropertyTwo relation:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier offset:(CGFloat)offset{
    return [NSLayoutConstraint constraintWithItem:viewPropertyOne.view attribute:viewPropertyOne.attribute relatedBy:relation toItem:viewPropertyTwo.view attribute:viewPropertyTwo.attribute multiplier:multiplier constant:offset];
}

#pragma mark - public methods

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
    return [NSLayoutConstraint al_constrainViewProperty:viewProperty1 toViewPropertyTwo:viewProperty2 relation:NSLayoutRelationEqual multiplier:multiplier offset:offset];
}

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
    return [NSLayoutConstraint al_constrainViewProperty:viewProperty1 toViewPropertyTwo:viewProperty2 relation:NSLayoutRelationGreaterThanOrEqual multiplier:multiplier offset:offset];
}
            
+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
    return [NSLayoutConstraint al_constrainViewProperty:viewProperty1 toViewPropertyTwo:viewProperty2 relation:NSLayoutRelationLessThanOrEqual multiplier:multiplier offset:offset];
}

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToValue:(CGFloat)value {
    return [NSLayoutConstraint constraintWithItem:viewProperty1.view attribute:viewProperty1.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:viewProperty1.attribute multiplier:1.0 constant:value];
}

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToValue:(CGFloat)value {
    return [NSLayoutConstraint constraintWithItem:viewProperty1.view attribute:viewProperty1.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:viewProperty1.attribute multiplier:1.0 constant:value];
}

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToValue:(CGFloat)value {
    return [NSLayoutConstraint constraintWithItem:viewProperty1.view attribute:viewProperty1.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:viewProperty1.attribute multiplier:1.0 constant:value];
}

@end
