SimpleAL
========

Simplifying autolayout


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

