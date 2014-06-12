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

/**
 Creates a string indicating a the number of cheeses.
 
 Example usage:
 
 @code
 NSString *phrase = [cheese numberOfCheesesStringWithCheeseCount:4];
 // phrase is "4 cheeses"

 NSString *phrase2 = [cheese numberOfCheesesStringWithCheeseCount:1];
 // phrase2 is "1 cheese"
@endcode
 
 @param cheeseCount
 The number of cheeses.
 
 @return Returns a string indicating a the number of cheeses.
 */
- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount;

@end
