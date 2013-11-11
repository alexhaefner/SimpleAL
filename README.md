SimpleAL
========

Simplifying AutoLayout

**Creating constraints and applying them directly to views**

Left alight a view that is 200px wide and as tall as it's super view, all using AutoLayout:

    UIView *myView, superView;

    [superView addConstraint:[myView.al_left equalToViewProperty:superView.al_left]];
    [superView addConstraint:[myView.al_height lessThanOrEqualToViewProperty:superView.al_height]];
    [superView addConstraint:[myView.al_width lessThanOrEqualToValue:200]];

The equivalent autolayout expressions for the the three respective expressions above are:

    [superView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationGreaterThanOrEqualTo toItem:superView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationLessThanOrEqualTo toItem:superView attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0.0]];
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqualTo toItem:nil attribute:0 multiplier:1.0 constant:0.0]];

All of the al_ methods return an NSLayoutConstraint.  So doing autolayout like it was designed is super simple:

    @property (nonatomic, retain) NSLayoutConstraint *constraintToRemoveLater;
    self.constraintToRemoveLater = [myView.al_width greaterThanOrEqualToValue:200];

    //later on
    [myView removeConstraint:self.constraintToRemoveLater]; //!!

Inequalities, offsets, and multipliers (an important part of AutoLayout) are all available:

    // Make the left of myView greater than or equal to superView.left + 10.0
    [superView addConstraint:[myView.al_left greaterThanOrEqualToViewProperty:superView.al_left offset:10.0]];

    // myView's width >= (someView's width * 2.0) + 0.0
    [superView addConstraint:[myView.al_width greaterThanOrEqualToViewProperty:someView.al_width multipler:2.0 offset:0.0]];

The equivalent autolayout expressions for the two inequality expressions above are:

    [superView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationGreaterThanOrEqualTo toItem:superView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:10.0]];
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationGreaterThanOrEqualTo toItem:superView attribute:NSLayoutAttributeWidth multiplier:2.0 constant:0.0]];

**Centering a view and top aligning it within the superview (10px offset on top).**

Instead of:

    [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeTop multiplier:1.0 constant:10.0];
    [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];

We can do:

    [subView.al_top equalToViewProperty:superView.al_top offset:10];
    [subView.al_centerX equalToViewProperty:superView.al_centerX];

**Setting min widths (and other inequalities):**

Instead of:

    [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationLessThanOrEqualTo toItem:nil attribute:nil multiplier:1.0 constant:200.0];

We can do:

    [subView.al_width lessThanOrEqualToValue:200.0];

Instead of:

    [NSLayoutConstraint constraintWithItem:subView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationLessThanOrEqualTo toItem:superView: attribute:NSLayoutAttributeRight multiplier:1.0 constant:10.0];

We can do:

    [subview.al_right lessThanOrEqualToViewProperty:parentView.al_right offset:10.0];


**NSArray Utility Methods**

Want to set some property on a large number of views at once?  You're in luck! NSArray has been extended to allow you to set a property on a large number of UIViews and UIView subclasses at once.  If an object is not a UIView or its subclass, then SimpleAL will assert.

    [parentView addConstraints:[@[viewOne, viewTwo, viewThree].al_left greaterThanOrEqualToViewProperty:parentView.al_left]];
    [parentView addConstraints:[@[viewOne, viewTwo, viewThree].al_width equalToValue:200.0]];

An equivalent standard AutoLayout expression for just the bottom line is (somewhat disturbingly):

    [parentView addConstraints:@[[NSLayoutConstraint constraintWithItem:viewOne attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqualTo toItem:nil attribute:0 multiplier:1.0 constant:200.0],
        [NSLayoutConstraint constraintWithItem:viewTwo attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqualTo toItem:nil attribute:0 multiplier:1.0 constant:200.0],
        [NSLayoutConstraint constraintWithItem:viewThree attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqualTo toItem:nil attribute:0 multiplier:1.0 constant:200.0]]];
