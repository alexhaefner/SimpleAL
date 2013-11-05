//
//  UIView+SimpleAL.m
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "UIView+AHAL.h"
#import "SimpleALViewProperty.h"

@implementation UIView (SimpleAL)

- (SimpleALViewProperty *)al_centerX {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeCenterX];
}

- (SimpleALViewProperty *)al_centerY {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeCenterY];
}

- (SimpleALViewProperty *)al_baseLine {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeBaseline];
}

- (SimpleALViewProperty *)al_bottom {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeBottom];
}

- (SimpleALViewProperty *)al_height {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeHeight];
}

- (SimpleALViewProperty *)al_width {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeWidth];
}

- (SimpleALViewProperty *)al_top {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeTop];
}

- (SimpleALViewProperty *)al_leading {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeLeading];
}

- (SimpleALViewProperty *)al_left {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeLeft];
}

- (SimpleALViewProperty *)al_trailing {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeTrailing];
}

- (SimpleALViewProperty *)al_right {
    return [SimpleALViewProperty attributeWithView:self nsLayoutAttribute:NSLayoutAttributeRight];
}

@end
