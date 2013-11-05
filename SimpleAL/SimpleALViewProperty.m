//
//  SimpleALAttribute.m
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "SimpleALViewProperty.h"

@implementation SimpleALViewProperty

- (id)initWithView:(UIView *)view layoutAttribute:(NSLayoutAttribute)attrib {
    self = [super init];
    if (self) {
        _attribute = attrib;
        _view = view;
    }
    return self;
}

+ (SimpleALViewProperty *)attributeWithView:(UIView *)view nsLayoutAttribute:(NSLayoutAttribute)attrib {
    return [[SimpleALViewProperty alloc] initWithView:view layoutAttribute:attrib];
}
@end
