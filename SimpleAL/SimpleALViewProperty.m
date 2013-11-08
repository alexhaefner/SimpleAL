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
    return [NSLayoutConstraint al_constrainViewProperty:self equalToViewProperty:viewProperty2];
}

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
    return [NSLayoutConstraint al_constrainViewProperty:self equalToViewProperty:viewProperty2 offset:offset];
}

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
    return [NSLayoutConstraint al_constrainViewProperty:self lessThanOrEqualToViewProperty:viewProperty2];
}

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
    return [NSLayoutConstraint al_constrainViewProperty:self lessThanOrEqualToViewProperty:viewProperty2 offset:offset];
}

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
    return [NSLayoutConstraint al_constrainViewProperty:self greaterThanOrEqualToViewProperty:viewProperty2];
}

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 offset:(CGFloat)offset {
    return [NSLayoutConstraint al_constrainViewProperty:self greaterThanOrEqualToViewProperty:viewProperty2];
}

- (NSLayoutConstraint *)equalToValue:(CGFloat)value {
    return [NSLayoutConstraint al_constrainViewProperty:self equalToValue:value];
}

- (NSLayoutConstraint *)lessThanOrEqualToValue:(CGFloat)value {
    return [NSLayoutConstraint al_constrainViewProperty:self lessThanOrEqualToValue:value];
}

- (NSLayoutConstraint *)greaterThanOrEqualToValue:(CGFloat)value {
    return [NSLayoutConstraint al_constrainViewProperty:self greaterThanOrEqualToValue:value];
}
@end
