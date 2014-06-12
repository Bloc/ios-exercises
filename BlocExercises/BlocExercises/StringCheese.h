//
//  StringCheese.h
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import <Foundation/Foundation.h>

@interface StringCheese : NSObject

/**
 Creates a sentence indicating a favorite cheese.
 
 Example usage:
 
 @code
 NSString *fullSentence = [cheese favoriteCheeseStringWithCheese:@"cheddar"];
 // fullSentence is "My favorite cheese is cheddar."
 @endcode
 
 @param cheeseName
 The name of the favorite cheese
 
 @return Returns a full sentence indicating a favorite cheese.
 */
- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName;

/**
 Removes "cheese" from the end of a string about cheese.
 
 Example usage:
 
 @code
 NSString *shortName = [cheese cheeseNameWithoutCheeseSuffix:@"mozarella cheese"];
 // fullSentence is "My favorite cheese is cheddar."
 @endcode
 
 @param cheeseName
 The name of the favorite cheese
 
 @return Returns a full sentence indicating a favorite cheese.
 */
- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName;

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount;

@end
