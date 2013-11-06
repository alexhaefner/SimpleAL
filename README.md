SimpleAL
========

Simplifying autolayout

There are two ways to use this framework.  The simplest way will create and apply a constraint directly to a view.  The other way is an category on NSLayoutConstrain that is a simplification of the standard API.

**Creating constraints and applying them directly to views**

Left alight a view that is 200px wide and as tall as it's super view, all using AutoLayout:

    UIView *myView, superView;

    [myView.al_left equalToViewProperty:superView.al_left];
    [myView.al_height lessThanOrEqualToViewProperty:superView.al_height];
    [myView.al_width lessThanOrEqualToValue:200];

All of the al_ methods return an NSLayoutConstraint.  So doing autolayout like it was designed is super simple:

    @property (nonatomic, retain) NSLayoutConstraint *constraintToRemoveLater;
    self.constraintToRemoveLater = [myView.al_width greaterThanOrEqualToValue:200];

    //later on
    [myView removeConstraint:self.constraintToRemoveLater]; //!!

Inequalities, offsets, and multipliers (an important part of AutoLayout) are all available:

    // Make the left of myView greater than or equal to superView.left + 10.0
    [myView.al_left greaterThanOrEqualToViewProperty:superView.al_left offset:10.0];

    // myView's width >= (someView's width * 2.0) + 0.0
    [myView.al_width greaterThanOrEqualToViewProperty:someView.al_width multipler:2.0 offset:0.0];

The equivalent autolayout expressions are:

    
    [myView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationGreaterThanOrEqualTo toItem:superView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:10.0]];
    [myView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationGreaterThanOrEqualTo toItem:superView attribute:NSLayoutAttributeWidth multiplier:2.0 constant:0.0]];

**Creating constraints using the NSLayoutConstraint category**

    The other way to use this library is to use the NSLayoutConstraint extensions that are made available through categories.  Use this is for some reason you do not want to apply a constraint directly to a view.

**Centering a view and top aligning it within the superview (10px offset on top).**

Instead of:

    [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeTop multiplier:1.0 constant:10.0];
    [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];

We can do:

    [NSLayoutConstraint al_constrainViewProperty:subView.al_top equalToViewProperty:superView.al_top offset:10];
    [NSLayoutConstraint al_constrainViewProperty:subView.al_centerX equalToViewProperty:superView.al_centerX];

**Setting min widths (and other inequalities):**

Instead of:

    [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationLessThanOrEqualTo toItem:nil attribute:nil multiplier:1.0 constant:200.0];

We can do:

    [NSLayoutConstraint al_constrainViewProperty:subView.al_width lessThanOrEqualToValue:200.0];

Instead of:

    [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationLessThanOrEqualTo toItem:superView: attribute:NSLayoutAttributeRight multiplier:1.0 constant:10.0];

We can do:

    [NSLayoutConstraint al_constrainViewProperty:subview.al_right lessThanOrEqualToViewProperty:parentView.al_right offset:10.0];

