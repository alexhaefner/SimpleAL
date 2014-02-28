//
//  NSArray+SimpleAL.h
//  SimpleAL
//
//  Created by Alexander Haefner on 11/10/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

@class SimpleALViewPropertyArray;

@interface NSArray (SimpleAL)

/*!
 The SimpleAL NSArray property for the centerX position of an array of views
 @return SimpleALViewPropertyArray representing the view property for the array of views
 */
- (SimpleALViewPropertyArray *)al_centerX;

/*!
 The SimpleAL NSArray property for the centerY position of an array of views
 @return SimpleALViewPropertyArray representing the view property for the array of views
 */
- (SimpleALViewPropertyArray *)al_centerY;

/*!
 The SimpleAL NSArray property for the baseline position of an array of views
 @return SimpleALViewPropertyArray representing the view property for the array of views
 */
- (SimpleALViewPropertyArray *)al_baseline;

/*!
 The SimpleAL NSArray property for the bottom position of an array of views
 @return SimpleALViewPropertyArray representing the view property for the array of views
 */
- (SimpleALViewPropertyArray *)al_bottom;

/*!
The SimpleAL NSArray property for the height of an array of views
@return SimpleALViewPropertyArray representing the view property for the array of views
*/
- (SimpleALViewPropertyArray *)al_height;

/*!
 The SimpleAL NSArray property for the width of an array of views
 @return SimpleALViewPropertyArray representing the view property for the array of views
 */
- (SimpleALViewPropertyArray *)al_width;

/*!
 The SimpleAL NSArray property for the top of an array of views
 @return SimpleALViewPropertyArray representing the view property for the array of views
 */
- (SimpleALViewPropertyArray *)al_top;

/*!
 The SimpleAL NSArray property for the leading of an array of views
 @return SimpleALViewPropertyArray representing the view property for the array of views
 */
- (SimpleALViewPropertyArray *)al_leading;

/*!
 The SimpleAL NSArray property for the left of an array of views
 @return SimpleALViewPropertyArray representing the view property for the array of views
 */
- (SimpleALViewPropertyArray *)al_left;

/*!
 The SimpleAL NSArray property for the right position of an array of views
 @return SimpleALViewPropertyArray representing the view property for the array of views
 */
- (SimpleALViewPropertyArray *)al_right;

/*!
 The SimpleAL NSArray property for the trailing of an array of views
 @return SimpleALViewPropertyArray representing the view property for the array of views
 */
- (SimpleALViewPropertyArray *)al_trailing;
@end
