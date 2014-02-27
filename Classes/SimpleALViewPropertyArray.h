//
//  SimpleALViewPropertyArray.h
//  SimpleAL
//
//  Created by Alexander Haefner on 11/10/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

@class SimpleALViewProperty;

/*!
 SimpleALViewPropertyArray is an object that represents an array of UIView and NSAutolayoutAttribute pairs to other SimpleAL objects.
 
 The use case for this class is if you want an array of views all to have the same relation to some other view.
 
 @note There is no initializer for this class.  It is designed to be used purely with the NSArray+SimpleAL category
 @see SimpleALViewProperty
 */
@interface SimpleALViewPropertyArray : NSObject

/*!
 An NSLayoutConstraint of the equation: self.attribute = viewProperty2.attribute * 1.0 + 0
 @param viewProperty2 The SimpleALViewProperty property for the right hand side of the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2;

/*!
 An NSLayoutConstraint of the equation: self.attribute = viewProperty2.attribute * 1.0 + constant
 @param viewProperty2 The SimpleALViewProperty property for the right hand side of the above equation
 @param constant The constant value in the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute = viewProperty2.attribute * multiplier + constant
 @param viewProperty2 The SimpleALViewProperty property for the right hand side of the above equation
 @param multiplier The multiplier in the above equation
 @param constant The constant value in the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute <= viewProperty2.attribute * 1.0 + 0.0
 @param viewProperty2 The SimpleALViewProperty property for the right hand side of the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

/*!
 An NSLayoutConstraint of the equation: self.attribute <= viewProperty2.attribute * 1.0 + constant
 @param viewProperty2 The SimpleALViewProperty property for the right hand side of the above equation
 @param constant The constant value in the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute <= viewProperty2.attribute * multiplier + constant
 @param viewProperty2 The SimpleALViewProperty property for the right hand side of the above equation
 @param multiplier The multiplier in the above equation
 @param constant The constant value in the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute >= viewProperty2.attribute * 1.0 + 0.0
 @param viewProperty2 The SimpleALViewProperty property for the right hand side of the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

/*!
 An NSLayoutConstraint of the equation: self.attribute >= viewProperty2.attribute * 1.0 + constant
 @param viewProperty2 The SimpleALViewProperty property for the right hand side of the above equation
 @param constant The constant value in the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute >= viewProperty2.attribute * multiplier + constant
 @param viewProperty2 The SimpleALViewProperty property for the right hand side of the above equation
 @param multiplier The multiplier in the above equation
 @param constant The constant value in the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute = value
 @param value The constant value in the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)equalToValue:(CGFloat)value;

/*!
 An NSLayoutConstraint of the equation: self.attribute <= value
 @param value The constant value in the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)lessThanOrEqualToValue:(CGFloat)value;

/*!
 An NSLayoutConstraint of the equation: self.attribute >= value
 @param value The constant value in the above equation
 @return An NSArray of NSLayoutConstraint objects representing the equality expression
 */
- (NSArray /*of NSLayoutConstraint*/ *)greaterThanOrEqualToValue:(CGFloat)value;
@end
