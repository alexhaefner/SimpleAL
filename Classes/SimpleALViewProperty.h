//
//  SimpleALAttribute.h
//  SimpleAL
//
//  Created by Alex Haefner on 11/4/13.
//  Copyright (c) 2013 Alex Haefner. All rights reserved.
//

/*!
 SimpleALViewProperty is an object that represents a UIView and an NSAutolayoutAttribute.
 
 The object provides an interface for interacting with other SimpleALViewProperties, which also provide a view and an NSAutolayoutAttribute, to create NSLayoutConstraint objects.
 
 @note This class has no default initializer.  It is meant to be initialized only by the UIView+SimpleAL category, internally.  Your usage of the object should come purely from the UIView category
 @see UIView+SimpleAL
 */
@interface SimpleALViewProperty : NSObject

/*!
 An NSLayoutConstraint of the equation: self.attribute = viewProperty2.attribute * 1.0 + 0
 @param viewProperty2 The SimpleALViewProperty represented in the above formula
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2;

/*!
 An NSLayoutConstraint of the equation: self.attribute = viewProperty2.attribute * 1.0 + constant
 @param viewProperty2 The SimpleALViewProperty represented in the above formula
 @param constant The constant in the above equation
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute = viewProperty2.attribute * multiplier + constant
 @param viewProperty2 The SimpleALViewProperty represented in the above formula
 @param multipler The multiplier in the above equation
 @param constant The constant in the above equation
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)equalToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute <= viewProperty2.attribute * 1.0 + 0.0
 @param viewProperty2 The SimpleALViewProperty represented in the above formula
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

/*!
 An NSLayoutConstraint of the equation: self.attribute <= viewProperty2.attribute * 1.0 + constant
 @param viewProperty2 The SimpleALViewProperty represented in the above formula
 @param constant The constant in the above equation
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute <= viewProperty2.attribute * multiplier + constant
 @param viewProperty2 The SimpleALViewProperty represented in the above formula
 @param multipler The multiplier in the above equation
 @param constant The constant in the above equation
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)lessThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute >= viewProperty2.attribute * 1.0 + 0.0
 @param viewProperty2 The SimpleALViewProperty represented in the above formula
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2;

/*!
 An NSLayoutConstraint of the equation: self.attribute >= viewProperty2.attribute * 1.0 + constant
 @param viewProperty2 The SimpleALViewProperty represented in the above formula
 @param constant The constant in the above equation
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute >= viewProperty2.attribute * multiplier + constant
 @param viewProperty2 The SimpleALViewProperty represented in the above formula
 @param multipler The multiplier in the above equation
 @param constant The constant in the above equation
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)greaterThanOrEqualToViewProperty:(SimpleALViewProperty *)viewProperty2 multiplier:(CGFloat)multiplier constant:(CGFloat)constant;

/*!
 An NSLayoutConstraint of the equation: self.attribute = value
 @param value The value to set the constraint equal to
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)equalToValue:(CGFloat)value;

/*!
 An NSLayoutConstraint of the equation: self.attribute <= value
 @param value The value to set the constraint equal to
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)lessThanOrEqualToValue:(CGFloat)value;

/*!
 An NSLayoutConstraint of the equation: self.attribute >= value
 @param value The value to set the constraint equal to
 @return An NSLayoutConstraint representing the equality expression
 */
- (NSLayoutConstraint *)greaterThanOrEqualToValue:(CGFloat)value;
@end
