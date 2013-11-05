//
//  NSLayoutConstraint+AHAL.m
//  AHAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "NSLayoutConstraint+SimpleAL.h"
#import "SimpleALViewProperty.h"
#import "UIView+SimpleAL.h"

@implementation NSLayoutConstraint (SimpleAL)
#pragma mark - private methods

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewPropertyOne toViewPropertyTwo:(SimpleALViewProperty *)viewPropertyTwo relation:(NSLayoutRelation)relation offset:(CGFloat)offset {
    return [NSLayoutConstraint constraintWithItem:viewPropertyOne.view attribute:viewPropertyOne.attribute relatedBy:relation toItem:viewPropertyTwo.view attribute:viewPropertyTwo.attribute multiplier:1.0 constant:offset];
}

#pragma mark - public methods

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToViewProperty:(SimpleALViewProperty *)viewProperty2 {
    return [NSLayoutConstraint constrainViewProperty:viewProperty1 equalToViewProperty:viewProperty2 offset:0];
}

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
    return [NSLayoutConstraint constrainViewProperty:viewProperty1 toViewPropertyTwo:viewProperty2 relation:NSLayoutRelationEqual offset:offset];
}

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
    return [NSLayoutConstraint constrainViewProperty:viewProperty1 greaterThanOrEqualToViewProperty:viewProperty2 offset:0];
}

+(NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
    return [NSLayoutConstraint constrainViewProperty:viewProperty1 toViewPropertyTwo:viewProperty2 relation:NSLayoutRelationGreaterThanOrEqual offset:offset];
}

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
    return [NSLayoutConstraint constrainViewProperty:viewProperty1 lessThanOrEqualToViewProperty:viewProperty2 offset:0];
}

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
    return [NSLayoutConstraint constrainViewProperty:viewProperty1 toViewPropertyTwo:viewProperty2 relation:NSLayoutRelationLessThanOrEqual offset:offset];
}

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 equalToValue:(CGFloat)value {
    return [NSLayoutConstraint constraintWithItem:viewProperty1.view attribute:viewProperty1.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:nil multiplier:1.0 constant:value];
}

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 lessThanOrEqualToValue:(CGFloat)value {
    return [NSLayoutConstraint constraintWithItem:viewProperty1.view attribute:viewProperty1.attribute relatedBy:NSLayoutRelationEqual toItem:nil attribute:nil multiplier:1.0 constant:value];
}

+ (NSLayoutConstraint *)constrainViewProperty:(SimpleALViewProperty *)viewProperty1 greaterThanOrEqualToValue:(CGFloat)value {
    return [NSLayoutConstraint constraintWithItem:viewProperty1.view attribute:viewProperty1.attribute relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:nil multiplier:1.0 constant:value];
}

- (void)dontDoMuch {
    UIView *someView;
    UIView *parentView;
    [parentView addConstraint:[NSLayoutConstraint al_constrainViewProperty:someView.al_left lessThanOrEqualToViewProperty:parentView.al_right]];
}
@end
