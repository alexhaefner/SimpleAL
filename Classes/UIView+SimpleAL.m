//
//  UIView+SimpleAL.m
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "UIView+SimpleAL.h"

#import "SimpleALViewProperty.h"
#import "SimpleALViewProperty_Private.h"

@implementation UIView (SimpleAL)

- (SimpleALViewProperty *)al_centerX {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeCenterX];
}

- (SimpleALViewProperty *)al_centerY {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeCenterY];
}

- (SimpleALViewProperty *)al_baseline {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeBaseline];
}

- (SimpleALViewProperty *)al_bottom {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeBottom];
}

- (SimpleALViewProperty *)al_height {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeHeight];
}

- (SimpleALViewProperty *)al_width {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeWidth];
}

- (SimpleALViewProperty *)al_top {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeTop];
}

- (SimpleALViewProperty *)al_leading {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeLeading];
}

- (SimpleALViewProperty *)al_left {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeLeft];
}

- (SimpleALViewProperty *)al_trailing {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeTrailing];
}

- (SimpleALViewProperty *)al_right {
    return [SimpleALViewProperty attributeWithView:self layoutAttribute:NSLayoutAttributeRight];
}

@end
