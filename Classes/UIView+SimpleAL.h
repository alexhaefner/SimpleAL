//
//  UIView+SimpleAL.h
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

@class SimpleALViewProperty;

@interface UIView (SimpleAL)

@property (readonly) SimpleALViewProperty *al_baseLine;
@property (readonly) SimpleALViewProperty *al_bottom;
@property (readonly) SimpleALViewProperty *al_centerX;
@property (readonly) SimpleALViewProperty *al_centerY;
@property (readonly) SimpleALViewProperty *al_height;
@property (readonly) SimpleALViewProperty *al_leading;
@property (readonly) SimpleALViewProperty *al_left;
@property (readonly) SimpleALViewProperty *al_right;
@property (readonly) SimpleALViewProperty *al_top;
@property (readonly) SimpleALViewProperty *al_trailing;
@property (readonly) SimpleALViewProperty *al_width;

@end
