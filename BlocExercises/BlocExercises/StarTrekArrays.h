//
//  StarTrekArrays.h
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import <Foundation/Foundation.h>

@interface StarTrekArrays : NSObject

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString;
- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray;
- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray;
- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray;

@end
