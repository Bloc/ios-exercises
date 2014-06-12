//
//  AwesomeCounter.h
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import <Foundation/Foundation.h>

@interface AwesomeCounter : NSObject

/**
 Creates a string of numbers between two numbers, inclusively.
 
 Example usage:
 
 @code
 NSString *numbers = [counter stringWithNumbersBetweenNumber:1 andOtherNumber:3];
 // numbers is "123"
 @endcode
 
 @param number
 A number at one end of the range.
 
 @param otherNumber
 The number at the other end of the range.
 
 @note Either @c number or @c otherNumber may be the lower number, but the string always includes numbers from lowest to highest.
 
 @return Returns a string of numbers between two numbers, inclusively.
 */
- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber;

@end
