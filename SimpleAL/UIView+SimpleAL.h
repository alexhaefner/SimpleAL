//
//  UIView+AHAL.h
//  AHAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleALViewProperty;

@interface UIView (SimpleAL)

- (SimpleALViewProperty *)al_centerX;
- (SimpleALViewProperty *)al_centerY;
- (SimpleALViewProperty *)al_baseLine;
- (SimpleALViewProperty *)al_bottom;
- (SimpleALViewProperty *)al_height;
- (SimpleALViewProperty *)al_width;
- (SimpleALViewProperty *)al_top;
- (SimpleALViewProperty *)al_leading;
- (SimpleALViewProperty *)al_left;
- (SimpleALViewProperty *)al_right;
- (SimpleALViewProperty *)al_trailing;

@end
