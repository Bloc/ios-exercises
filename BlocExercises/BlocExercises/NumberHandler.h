//
//  NumberHandler.h
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import <Foundation/Foundation.h>

@interface NumberHandler : NSObject

/**
 Doubles a number.

 @param number An NSNumber.
 
 @return An NSNumber with double the value of the provided NSNumber.
 */
- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number;

/**
 Creates an array of NSNumbers between two integers, inclusively.
 
 @param number       A number at one end of the range.
 @param otherNumber  The number at the other end of the range.
 
 @note Either @c number or @c otherNumber may be the lower number, but the string always includes numbers from lowest to highest.

 @return An array of NSNumbers between two integers, inclusively.
 */
- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber;

/**
 Returns the lowest number in an array.
 
 @param arrayOfNumbers An array of NSNumbers.
 
 @return The lowest number in the array as an NSInteger.
 */
- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers;

@end
