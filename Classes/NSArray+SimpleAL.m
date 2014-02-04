//
//  NSArray+SimpleAL.m
//  SimpleAL
//
//  Created by Alexander Haefner on 11/10/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "NSArray+SimpleAL.h"

#import "SimpleALViewProperty.h"
#import "SimpleALViewPropertyArray.h"
#import "SimpleALViewPropertyArray+ArrayManipulation.h"
#import "UIView+SimpleAL.h"

typedef SimpleALViewProperty *(^SimpleALPropertyForViewBlock)(UIView *view);

static const NSUInteger kMinViewsForEnumeration = 3;

@implementation NSArray (SimpleAL)

#pragma mark - private methods

- (SimpleALViewPropertyArray *)_al_newViewPropertyArrayFromViewsWithBlock:(SimpleALPropertyForViewBlock)propertyForViewBlock {
  SimpleALViewPropertyArray *array = [[SimpleALViewPropertyArray alloc] init];
  [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    NSAssert([obj isKindOfClass:[UIView class]], @"NSArray (SimpleAL) methods can only be called on an NSArray of UIView objects.");
    [array.simpleAlViewProperties addObject:propertyForViewBlock(obj)];
  }];
  return array;
}

#pragma mark - public methods

- (SimpleALViewPropertyArray *)al_centerX {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_centerX;
  }];
}

- (SimpleALViewPropertyArray *)al_centerY {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_centerY;
  }];
}

- (SimpleALViewPropertyArray *)al_baseLine {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_baseLine;
  }];
}

- (SimpleALViewPropertyArray *)al_bottom {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_bottom;
  }];
}

- (SimpleALViewPropertyArray *)al_height {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_height;
  }];
}

- (SimpleALViewPropertyArray *)al_width {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_width;
  }];
}

- (SimpleALViewPropertyArray *)al_top {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_top;
  }];
}

- (SimpleALViewPropertyArray *)al_leading {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_leading;
  }];
}

- (SimpleALViewPropertyArray *)al_left {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_left;
  }];
}

- (SimpleALViewPropertyArray *)al_right {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_right;
  }];
}

- (SimpleALViewPropertyArray *)al_trailing {
  return [self _al_newViewPropertyArrayFromViewsWithBlock:^(UIView *view) {
    return view.al_trailing;
  }];
}

- (NSArray */*of NSLayoutConstraints */)al_constraintsByEnumeratingViewPairsWithRelationshipBlock:(SimpleALViewPairEnumerationBlock)pairEnumerationBlock {
  NSAssert([self count] >= kMinViewsForEnumeration, @"Invalid number of views for %s. You must pass in at least %d views.", __func__, kMinViewsForEnumeration);
  UIView *firstView = nil, *secondView = nil;
  NSMutableArray *arrayOfConstraints = [NSMutableArray arrayWithCapacity:[self count] - 1];
  for (UIView *view in self) {
    secondView = view;
    if (firstView && secondView) {
      NSLayoutConstraint *constraint = pairEnumerationBlock(firstView, secondView);
      NSAssert(constraint != nil, @"The pairEnumerationBlock passed to %s must return a constraint.", __func__);
      [arrayOfConstraints addObject:constraint];
    }
    firstView = secondView;
  }
  return arrayOfConstraints;
}
@end
