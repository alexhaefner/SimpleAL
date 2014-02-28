//
//  UIView+SimpleAL.h
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

@class SimpleALViewProperty;

@interface UIView (SimpleAL)

/*!
 The SimpleAL UIView property for the baseline of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_baseline;

/*!
 The SimpleAL UIView property for the bottom of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_bottom;

/*!
 The SimpleAL UIView property for the centerX attribute of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_centerX;

/*!
 The SimpleAL UIView property for the centerY attribute of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_centerY;

/*!
 The SimpleAL UIView property for the height of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_height;

/*!
 The SimpleAL UIView property for the leading of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_leading;

/*!
 The SimpleAL UIView property for the left edge of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_left;

/*!
 The SimpleAL UIView property for the right edge of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_right;

/*!
 The SimpleAL UIView property for the top edge of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_top;

/*!
 The SimpleAL UIView property for the trailing of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_trailing;

/*!
 The SimpleAL UIView property for the width of a view
 */
@property (readonly, nonatomic) SimpleALViewProperty *al_width;

@end
