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
#import "SimpleALViewPropertyArray+AddObject.h"
#import "UIView+SimpleAL.h"

@implementation NSArray (SimpleAL)

#pragma mark - private methods
- (SimpleALViewPropertyArray *)createArrayFromObjectsWithBlock:(SimpleALViewProperty * (^)(UIView *view))addObjectBlock {
  SimpleALViewPropertyArray *array = [[SimpleALViewPropertyArray alloc] init];
  [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    NSAssert([obj isKindOfClass:[UIView class]], @"One of the objects passed to SimpleAL in an array was not a UIView or subclass");
    [array addObject:addObjectBlock(obj)];
  }];
  return array;
}

#pragma mark - public methods

- (SimpleALViewPropertyArray *)al_centerX {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_centerX;
  }];
}
- (SimpleALViewPropertyArray *)al_centerY {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_centerY;
  }];
}
- (SimpleALViewPropertyArray *)al_baseLine {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_baseLine;
  }];
}
- (SimpleALViewPropertyArray *)al_bottom {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_bottom;
  }];
}
- (SimpleALViewPropertyArray *)al_height {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_height;
  }];
}
- (SimpleALViewPropertyArray *)al_width {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_width;
  }];
}
- (SimpleALViewPropertyArray *)al_top {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_top;
  }];
}
- (SimpleALViewPropertyArray *)al_leading {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_leading;
  }];
}
- (SimpleALViewPropertyArray *)al_left {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_left;
  }];
}
- (SimpleALViewPropertyArray *)al_right {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_right;
  }];
}
- (SimpleALViewPropertyArray *)al_trailing {
  return [self createArrayFromObjectsWithBlock:^(UIView *view) {
    return view.al_trailing;
  }];
}
@end
