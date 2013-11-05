//
//  AHALAttribute.h
//  AHAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SimpleALViewProperty : NSObject
@property (nonatomic, strong) UIView *view;
@property (nonatomic, assign) NSLayoutAttribute attribute;

+ (SimpleALViewProperty *)attributeWithView:(UIView *)view nsLayoutAttribute:(NSLayoutAttribute)attrib;
@end
