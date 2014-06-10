//
//  EqualityDeterminer.h
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import <Foundation/Foundation.h>

@interface EqualityDeterminer : NSObject

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2;
- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2;

@end
