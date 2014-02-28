SimpleAL
========

Simple AutoLayout

### How it works

A UIView category creates al_* properties that return a SimpleALViewProperty object, which can be combined with other SimpleALViewProperty objects to generate NSLayoutConstraints, which can be used with standard Auto Layout code:

    NSLayoutConstraint *constraint = [myView.al_left equalToProperty:myOtherView.al_right];

### SimpleAL vs Auto Layout

##### Example 1

Let's say we want to use Auto Layout to left align a view that is 200 points wide and is as tall as its superview. We'll assume that there's a view called myView and it's contained by superView. With SimpleAL, that looks like this:

    [superView addConstraint:[myView.al_left equalToViewProperty:superView.al_left]];
    [superView addConstraint:[myView.al_height lessThanOrEqualToViewProperty:superView.al_height]];
    [superView addConstraint:[myView.al_width lessThanOrEqualToValue:200]];

In Auto Layout, that looks like this:

    [superView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationGreaterThanOrEqualTo toItem:superView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationLessThanOrEqualTo toItem:superView attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0.0]];
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqualTo toItem:nil attribute:0 multiplier:1.0 constant:0.0]];

##### Example 2

Inequalities, offsets, and multipliers are also important parts of Auto Layout and can be easily done with SimpleAL:

    // Make the left of myView greater than or equal to superView.left + 10.0
    [superView addConstraint:[myView.al_left greaterThanOrEqualToViewProperty:superView.al_left offset:10.0]];

    // myView's width >= (someView's width * 2.0) + 0.0
    [superView addConstraint:[myView.al_width greaterThanOrEqualToViewProperty:someView.al_width multipler:2.0 offset:0.0]];

In Auto Layout, that looks like this:

    [superView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationGreaterThanOrEqualTo toItem:superView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:10.0]];
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationGreaterThanOrEqualTo toItem:superView attribute:NSLayoutAttributeWidth multiplier:2.0 constant:0.0]];


##### Example 3

Let's say we want to center a view horizontally and align its top with its super view's top. In SimpleAL, that looks like this:

    [myView.al_top equalToViewProperty:superView.al_top offset:10];
    [myView.al_centerX equalToViewProperty:superView.al_centerX];

In Auto Layout, that looks like this:

    [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeTop multiplier:1.0 constant:10.0];
    [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];


### Generating more than one constraint at a time

SimpleAL adds an NSArray category that allows you to use the al_* properties on arrays of views.

    [parentView addConstraints:[@[viewOne, viewTwo, viewThree].al_left greaterThanOrEqualToViewProperty:parentView.al_left]];
    [parentView addConstraints:[@[viewOne, viewTwo, viewThree].al_width equalToValue:200.0]];

An equivalent standard AutoLayout expression for just the bottom line is (somewhat disturbingly):

    [parentView addConstraints:@[[NSLayoutConstraint constraintWithItem:viewOne attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqualTo toItem:nil attribute:0 multiplier:1.0 constant:200.0],
        [NSLayoutConstraint constraintWithItem:viewTwo attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqualTo toItem:nil attribute:0 multiplier:1.0 constant:200.0],
        [NSLayoutConstraint constraintWithItem:viewThree attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqualTo toItem:nil attribute:0 multiplier:1.0 constant:200.0]]];
