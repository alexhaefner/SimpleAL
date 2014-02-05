//
//  NSLayoutConstraint+SimpleAL.m
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "NSLayoutConstraint+SimpleAL.h"
#import "SimpleALViewProperty.h"
#import "UIView+SimpleAL.h"

@implementation NSLayoutConstraint (SimpleAL)

#pragma mark - private methods

+ (NSLayoutConstraint *)_al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 toViewProperty:(SimpleALViewProperty *)viewProperty2 relation:(NSLayoutRelation)relation multiplier:(CGFloat)multiplier offset:(CGFloat)offset{
    return [self constraintWithItem:viewProperty1.view attribute:viewProperty1.attribute relatedBy:relation toItem:viewProperty2.view attribute:viewProperty2.attribute multiplier:multiplier constant:offset];
}

#pragma mark - public methods

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
    return [self _al_constrainViewProperty:viewProperty1 toViewProperty:viewProperty2 relation:NSLayoutRelationEqual multiplier:multiplier offset:offset];
}

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
    return [self _al_constrainViewProperty:viewProperty1 toViewProperty:viewProperty2 relation:NSLayoutRelationGreaterThanOrEqual multiplier:multiplier offset:offset];
}
            
+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier offset:(CGFloat)offset {
    return [self _al_constrainViewProperty:viewProperty1 toViewProperty:viewProperty2 relation:NSLayoutRelationLessThanOrEqual multiplier:multiplier offset:offset];
}

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToValue:(CGFloat)value {
    return [self constraintWithItem:viewProperty1.view attribute:viewProperty1.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:viewProperty1.attribute multiplier:1.0 constant:value];
}

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToValue:(CGFloat)value {
    return [self constraintWithItem:viewProperty1.view attribute:viewProperty1.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:viewProperty1.attribute multiplier:1.0 constant:value];
}

+ (NSLayoutConstraint *)al_constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToValue:(CGFloat)value {
    return [self constraintWithItem:viewProperty1.view attribute:viewProperty1.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:viewProperty1.attribute multiplier:1.0 constant:value];
}

@end
