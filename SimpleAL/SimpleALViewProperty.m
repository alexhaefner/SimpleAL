//
//  SimpleALAttribute.m
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "SimpleALViewProperty.h"
#import "NSLayoutConstraint+SimpleAL.h"

@implementation SimpleALViewProperty

- (id)initWithView:(UIView *)view layoutAttribute:(NSLayoutAttribute)attrib {
    self = [super init];
    if (self) {
        _attribute = attrib;
        _view = view;
    }
    return self;
}

+ (SimpleALViewProperty *)attributeWithView:(UIView *)view nsLayoutAttribute:(NSLayoutAttribute)attrib {
    return [[SimpleALViewProperty alloc] initWithView:view layoutAttribute:attrib];
}

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 {
    NSLayoutConstraint *constraint = [NSLayoutConstraint al_constrainViewProperty:self equalToViewProperty:viewProperty2];
    [self.view addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
    NSLayoutConstraint *constraint = [NSLayoutConstraint al_constrainViewProperty:self equalToViewProperty:viewProperty2 offset:offset];
    [self.view addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
    NSLayoutConstraint *constraint = [NSLayoutConstraint al_constrainViewProperty:self lessThanOrEqualToViewProperty:viewProperty2];
    [self.view addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
    NSLayoutConstraint *constraint = [NSLayoutConstraint al_constrainViewProperty:self lessThanOrEqualToViewProperty:viewProperty2 offset:offset];
    [self.view addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
    NSLayoutConstraint *constraint = [NSLayoutConstraint al_constrainViewProperty:self greaterThanOrEqualToViewProperty:viewProperty2];
    [self.view addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
    NSLayoutConstraint *constraint = [NSLayoutConstraint al_constrainViewProperty:self greaterThanOrEqualToViewProperty:viewProperty2];
    [self.view addConstraint:constraint];
    return constraint;
}

- (NSLayoutConstraint *)equalToValue:(CGFloat)value {
    NSLayoutConstraint *constraint = [NSLayoutConstraint al_constrainViewProperty:self equalToValue:value];
    [self.view addConstraint:constraint];
    return constraint;
}
- (NSLayoutConstraint *)lessThanOrEqualToValue:(CGFloat)value {
    NSLayoutConstraint *constraint = [NSLayoutConstraint al_constrainViewProperty:self lessThanOrEqualToValue:value];
    [self.view addConstraint:constraint];
    return constraint;
}
- (NSLayoutConstraint *)greaterThanOrEqualToValue:(CGFloat)value {
    NSLayoutConstraint *constraint = [NSLayoutConstraint al_constrainViewProperty:self greaterThanOrEqualToValue:value];
    [self.view addConstraint:constraint];
    return constraint;
}
@end
