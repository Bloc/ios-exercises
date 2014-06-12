//
//  StarTrekDictionaries.h
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import <Foundation/Foundation.h>

@interface StarTrekDictionaries : NSObject

/**
 Determines the favorite drink of a given Star Trek character.
 
 @param characterDictionary An NSDictionary containing values for one or more of these keys: @"name", @"rank", @"information", @"favorite drink", and @"quote".
 
 @return The character's favorite drink, or @c nil if it's not provided.
 */
- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary;

/**
 Determines the favorite drinks of an array of given Star Trek characters.  Useful for party planning.
 
 @param charactersArray An array of dictionaries as defined in @c favoriteDrinkForStarTrekCharacterDictionary:.

 @return An array of favorite drinks.
 */
- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray;

/**
 Adds a quote to an existing character.
 
 @param characterDictionary A dictionary as defined in @c favoriteDrinkForStarTrekCharacterDictionary: without a value for @"quote".
 
 @return A dictionary containing all of the key/value pairs provided, plus a memorable quote.
 */
- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary;

@end
