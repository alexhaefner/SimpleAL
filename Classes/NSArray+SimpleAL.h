//
//  NSArray+SimpleAL.h
//  SimpleAL
//
//  Created by Alexander Haefner on 11/10/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

@class SimpleALViewPropertyArray;

typedef NSLayoutConstraint *(^SimpleALViewPairEnumerationBlock)(UIView *view1, UIView *view2);

@interface NSArray (SimpleAL)

- (NSArray */*of NSLayoutConstraints */)al_constraintsByEnumeratingViewPairsWithRelationshipBlock:(NSLayoutConstraint * (^)(UIView *viewOne, UIView *viewTwo))relationshipBlock;
- (SimpleALViewPropertyArray *)al_centerX;
- (SimpleALViewPropertyArray *)al_centerY;
- (SimpleALViewPropertyArray *)al_baseLine;
- (SimpleALViewPropertyArray *)al_bottom;
- (SimpleALViewPropertyArray *)al_height;
- (SimpleALViewPropertyArray *)al_width;
- (SimpleALViewPropertyArray *)al_top;
- (SimpleALViewPropertyArray *)al_leading;
- (SimpleALViewPropertyArray *)al_left;
- (SimpleALViewPropertyArray *)al_right;
- (SimpleALViewPropertyArray *)al_trailing;
@end
