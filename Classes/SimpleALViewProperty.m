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

- (id)initWithView:(UIView *)view layoutAttribute:(NSLayoutAttribute)attribute {
    self = [super init];
    if (self) {
        _attribute = attribute;
        _view = view;
    }
    return self;
}

+ (SimpleALViewProperty *)attributeWithView:(UIView *)view layoutAttribute:(NSLayoutAttribute)attribute {
    return [[[self class] alloc] initWithView:view layoutAttribute:attribute];
}

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 {
    return [NSLayoutConstraint al_constrainViewProperty:self equalToViewProperty:viewProperty2 multiplier:1.0 constant:0.0];
}

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)offset {
    return [NSLayoutConstraint al_constrainViewProperty:self equalToViewProperty:viewProperty2 multiplier:1.0 constant:offset];
}

- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)offset {
  return [NSLayoutConstraint al_constrainViewProperty:self equalToViewProperty:viewProperty2 multiplier:multiplier constant:offset];
}

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
  return [NSLayoutConstraint al_constrainViewProperty:self lessThanOrEqualToViewProperty:viewProperty2 multiplier:1.0 constant:0.0];
}

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)offset {
  return [NSLayoutConstraint al_constrainViewProperty:self lessThanOrEqualToViewProperty:viewProperty2 multiplier:1.0 constant:offset];
}

- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)offset {
  return [NSLayoutConstraint al_constrainViewProperty:self lessThanOrEqualToViewProperty:viewProperty2 multiplier:multiplier constant:offset];
}

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 {
    return [NSLayoutConstraint al_constrainViewProperty:self greaterThanOrEqualToViewProperty:viewProperty2 multiplier:1.0 constant:0.0];
}

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)offset {
    return [NSLayoutConstraint al_constrainViewProperty:self greaterThanOrEqualToViewProperty:viewProperty2 multiplier:1.0 constant:0.0];
}

- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)offset {
  return [NSLayoutConstraint al_constrainViewProperty:self greaterThanOrEqualToViewProperty:viewProperty2 multiplier:multiplier constant:offset];
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
