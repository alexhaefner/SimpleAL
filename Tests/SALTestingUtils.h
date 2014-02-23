//
//  SALTestingUtils.h
//  SimpleAL
//
//  Created by Alex Haefner on 2/23/14.
//  Copyright (c) 2014 Alex Haefner. All rights reserved.
//

#define SALTAssertConstraintsEqual(firstConstraint, secondConstraint) \
({ \
    XCTAssert([firstConstraint isKindOfClass:[NSLayoutConstraint class]], @"The first argument to the marco was the wrong type"); \
    XCTAssert([secondConstraint isKindOfClass:[NSLayoutConstraint class]], @"The second argument to the marco was the wrong type"); \
    XCTAssertEqualObjects([firstConstraint firstItem], [secondConstraint firstItem], @"The constraints have different first items, but should have the same first items."); \
    XCTAssertEqual([firstConstraint firstAttribute], [secondConstraint firstAttribute], @"The constraints have different first attributes, but should have the same first attributes"); \
    XCTAssertEqualObjects([firstConstraint secondItem], [secondConstraint secondItem], @"The constraints have different second items, but should have the same second items."); \
    XCTAssertEqual([firstConstraint secondAttribute], [secondConstraint secondAttribute], @"The constraints have different second attributes, but should have the same second attributes"); \
    XCTAssert(([firstConstraint relation] == [secondConstraint relation]), @"The constraints have different relationship values"); \
    XCTAssert(([(NSLayoutConstraint *)firstConstraint multiplier] == [(NSLayoutConstraint *)secondConstraint multiplier]), @"The constraints have different multipliers"); \
    XCTAssert(([(NSLayoutConstraint *)firstConstraint constant] == [(NSLayoutConstraint *)secondConstraint constant]), @"The constraints have different multipliers"); \
})