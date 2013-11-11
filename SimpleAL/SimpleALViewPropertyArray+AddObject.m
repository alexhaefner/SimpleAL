//
//  SimpleALViewPropertyArray+AddObject.m
//  SimpleAL
//
//  Created by Alexander Haefner on 11/10/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

#import "SimpleALViewPropertyArray+AddObject.h"
#import "SimpleALViewPropertyArray_InternalArray.h"

@implementation SimpleALViewPropertyArray (AddObject)
- (void)addObject:(SimpleALViewProperty *)viewProperty {
  [self.simpleAlViewProperties addObject:viewProperty];
}
@end
