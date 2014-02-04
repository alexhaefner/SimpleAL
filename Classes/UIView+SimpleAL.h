//
//  UIView+SimpleAL.h
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

@class SimpleALViewProperty;

@interface UIView (SimpleAL)

@property (readonly, nonatomic) SimpleALViewProperty *al_baseLine;
@property (readonly, nonatomic) SimpleALViewProperty *al_bottom;
@property (readonly, nonatomic) SimpleALViewProperty *al_centerX;
@property (readonly, nonatomic) SimpleALViewProperty *al_centerY;
@property (readonly, nonatomic) SimpleALViewProperty *al_height;
@property (readonly, nonatomic) SimpleALViewProperty *al_leading;
@property (readonly, nonatomic) SimpleALViewProperty *al_left;
@property (readonly, nonatomic) SimpleALViewProperty *al_right;
@property (readonly, nonatomic) SimpleALViewProperty *al_top;
@property (readonly, nonatomic) SimpleALViewProperty *al_trailing;
@property (readonly, nonatomic) SimpleALViewProperty *al_width;

@end
