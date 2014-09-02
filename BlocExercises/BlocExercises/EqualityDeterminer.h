//
//  EqualityDeterminer.h
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import <Foundation/Foundation.h>

@interface EqualityDeterminer : NSObject

/**
 Indicates whether two strings are the same using a character-based comparison.
 
 @param string1
 The first string

 @param string2
 The second string

 @return @c YES if the strings are the same, or @c NO if they aren't.
 */
- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2;

/**
 Indicates whether two numbers are mathematically equal.
 
 @param number1
 The first number
 
 @param number2
 The second number
 
 @return @c YES if the numbers are the same, or @c NO if they aren't.
 */
- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2;

/**
 Indicates whether one integer is greater than another.
 
 @param integer1
 The first integer
 
 @param integer2
 The second integer
 
 @return @c YES if integer1 is greather than integer2, or @c NO if otherwise.
 */
- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2;

@end
