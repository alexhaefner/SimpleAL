//
//  SimpleALViewPropertyArray+AddObject.h
//  SimpleAL
//
//  Created by Alexander Haefner on 11/10/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "SimpleALViewPropertyArray.h"

@class SimpleALViewProperty;

@interface SimpleALViewPropertyArray (AddObject)
- (void)addObject:(SimpleALViewProperty *)viewProperty;
@end
