//
//  StringCheese.h
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import <Foundation/Foundation.h>

@interface StringCheese : NSObject

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName;

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName;

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount;

@end
