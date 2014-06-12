//
//  StarTrekArrays.h
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import <Foundation/Foundation.h>

@interface StarTrekArrays : NSObject

/**
 Converts a string containing multiple Star Trek characters into an array of said characters.
 
 @param characterString A semicolon-separated string of characters like @"Troi;Riker;Kirk;Janeway"

 @return An array of characters, like @[@"Troi", @"Riker", @"Kirk", @"Janeway"]
 */
- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString;

/**
 Converts an array of multiple Star Trek characters into a semicolon-separated string of said characters.
 
 @param characterArray An array of characters like @[@"McCoy", @"Tuvok"]
 
 @return A semicolon-separated string like @"McCoy;Tuvok".
 */
- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray;

/**
 Returns an array of alphabetically sorted character names.
 
 @param characterArray An array of unsorted character names, like @[@"Wesley", @"Q"].
 
 @return A sorted array, like @[@"Q", @"Wesley"].
 */
- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray;

/**
 Indicates whether the provided array of Star Trek characters contains Worf.
 
 @param characterArray An array of character names.
 
 @note Worf should be detected anywhere in the string, in any case.  For example, @"lieutenant commander worf" and @"WORF THE KLINGON" should both cause this method to return @c YES.

 @return @c YES if Worf is present in the array, or @c NO if he is not.
 */
- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray;

@end
