//
//  SimpleCalculator.h
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import <Foundation/Foundation.h>

@interface SimpleCalculator : NSObject

/**
 Increases a number by 1.
 
 Example usage:
 
 @code
 NSInteger newInteger = [calc increaseNumberBy1:6];
 // newInteger is 7.
 @endcode
 
 @param number
 The number to increase
 
 @return Returns the number higher than @c number.
 **/
- (NSInteger) increaseNumberBy1:(NSInteger) number;

/**
 Adds two numbers together.
 
 Example usage:
 
 @code
 NSInteger sum = [calc addNumber:6 toNumber:1];
 // sum is 7.
 @endcode
 
 @param number1
 The first number
 
 @param number2
 The second number
 
 @return Returns the sum of the two numbers.
 */
- (NSInteger) addNumber:(NSInteger) number1 toNumber:(NSInteger) number2;

/**
 Determines the remainder when one number is divided by another.
 
 Example usage:
 
 @code
 NSInteger result = [calc remainderOfNumber:6 dividedByNumber:4];
 // result is 2.
 @endcode
 
 @param dividend
 The number being divided
 
 @param divisor
 The number that the dividend will be divded by
 
 @return Returns the remainder after the division, or @c 0 if there is no remainder.
 */
- (NSInteger) remainderOfNumber:(NSInteger) dividend dividedByNumber:(NSInteger) divisor;

@end
