//
//  SimpleALTests.m
//  SimpleALTests
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "SimpleALTests.h"

#import "SimpleAl.h"
#import "SALTestingUtils.h"

@interface SimpleALTests ()
@property (retain, nonatomic) UIView *leftView; // The left view in an NSLayoutConstraint equation
@property (retain, nonatomic) UIView *rightView; // The right view in an NSLayoutConstraint equation
@end

@implementation SimpleALTests

- (void)setUp
{
    [super setUp];
    self.leftView = [[UIView alloc] init];
    self.rightView = [[UIView alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testConstraintsEqualForLeftEqualToRight
// leftView.left = rightView.right * 2.0 + 0.5
{
    NSLayoutConstraint *simpleAlConstraint = [self.leftView.al_left equalToViewProperty:self.rightView.al_right multiplier:2.0 constant:0.5];
    NSLayoutConstraint *standardConstraint = [NSLayoutConstraint constraintWithItem:self.leftView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.rightView attribute:NSLayoutAttributeRight multiplier:2.0 constant:0.5];
    SALTAssertConstraintsEqual(simpleAlConstraint, standardConstraint);
}

- (void)testConstraintsEqualForTopEqualToBottom
// leftView.top = rightView.bottom * 3.0 + 1.5
{
    NSLayoutConstraint *simpleAlConstraint = [self.leftView.al_top equalToViewProperty:self.rightView.al_bottom multiplier:3.0 constant:1.5];
    NSLayoutConstraint *standardConstraint = [NSLayoutConstraint constraintWithItem:self.leftView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.rightView attribute:NSLayoutAttributeBottom multiplier:3.0 constant:1.5];
    SALTAssertConstraintsEqual(simpleAlConstraint, standardConstraint);
}

- (void)testConstraintsEqualForTrailingEqualToLeading
// leftView.trailing = rightView.leading * 1.0 + 0.73
{
    NSLayoutConstraint *simpleAlConstraint = [self.leftView.al_trailing equalToViewProperty:self.rightView.al_leading multiplier:1.0 constant:0.73];
    NSLayoutConstraint *standardConstraint = [NSLayoutConstraint constraintWithItem:self.leftView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.rightView attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0.73];
    SALTAssertConstraintsEqual(simpleAlConstraint, standardConstraint);
}

- (void)testConstraintsEqualForHeightEqualToWidth
// leftView.height = rightView.height * 3.0 + 1.5
{
    NSLayoutConstraint *simpleAlConstraint = [self.leftView.al_height equalToViewProperty:self.rightView.al_width multiplier:3.0 constant:1.5];
    NSLayoutConstraint *standardConstraint = [NSLayoutConstraint constraintWithItem:self.leftView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.rightView attribute:NSLayoutAttributeWidth multiplier:3.0 constant:1.5];
    SALTAssertConstraintsEqual(simpleAlConstraint, standardConstraint);
}

- (void)testConstraintsEqualForCenterXGreaterThanOrEqualToCenterY
// leftView.centerX >= rightView.centerY * 1.0 + 0.0
{
    NSLayoutConstraint *simpleAlConstraint = [self.leftView.al_centerX greaterThanOrEqualToViewProperty:self.rightView.al_centerY multiplier:1.0 constant:0.0];
    NSLayoutConstraint *standardConstraint = [NSLayoutConstraint constraintWithItem:self.leftView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:self.rightView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0];
    SALTAssertConstraintsEqual(simpleAlConstraint, standardConstraint);
}

- (void)testConstraintsEqualForBaselineLessThanOrEqualToTop
// leftView.baseline <= rightView.top * 3.0 + 1.5
{
    NSLayoutConstraint *simpleAlConstraint = [self.leftView.al_baseline lessThanOrEqualToViewProperty:self.rightView.al_top multiplier:1.0 constant:0.0];
    NSLayoutConstraint *standardConstraint = [NSLayoutConstraint constraintWithItem:self.leftView attribute:NSLayoutAttributeBaseline relatedBy:NSLayoutRelationLessThanOrEqual toItem:self.rightView attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0];
    SALTAssertConstraintsEqual(simpleAlConstraint, standardConstraint);
}

- (void)testConstraintsEqualForHeightEqualToConstant
// leftView.height = 155.5
{
    NSLayoutConstraint *simpleAlConstraint = [self.leftView.al_height equalToValue:155.5];
    NSLayoutConstraint *standardConstraint = [NSLayoutConstraint constraintWithItem:self.leftView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:155.5];
    SALTAssertConstraintsEqual(simpleAlConstraint, standardConstraint);
}

- (void)testConstraintsEqualForHeightLessThanOrEqualToConstant
// leftView.height <= 135.5
{
    NSLayoutConstraint *simpleAlConstraint = [self.leftView.al_height lessThanOrEqualToValue:135.5];
    NSLayoutConstraint *standardConstraint = [NSLayoutConstraint constraintWithItem:self.leftView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationLessThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:135.5];
    SALTAssertConstraintsEqual(simpleAlConstraint, standardConstraint);
}

- (void)testConstraintsEqualForWidthGreaterThanOrEqualToConstant
// leftView.height >= 105.3
{
    NSLayoutConstraint *simpleAlConstraint = [self.leftView.al_width greaterThanOrEqualToValue:105.3];
    NSLayoutConstraint *standardConstraint = [NSLayoutConstraint constraintWithItem:self.leftView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationGreaterThanOrEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:105.3];
    SALTAssertConstraintsEqual(simpleAlConstraint, standardConstraint);
}

@end
