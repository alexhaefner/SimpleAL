//
//  SimpleALViewProperty_Private.h
//  SimpleAL
//
//  Created by Alex Haefner on 2/23/14.
//  Copyright (c) 2014 Alex Haefner. All rights reserved.
//

#import "SimpleALViewProperty.h"

@interface SimpleALViewProperty ()
@property (nonatomic, strong) UIView *view;
@property (nonatomic, assign) NSLayoutAttribute attribute;

+ (instancetype)attributeWithView:(UIView *)view layoutAttribute:(NSLayoutAttribute)attribute;
@end
