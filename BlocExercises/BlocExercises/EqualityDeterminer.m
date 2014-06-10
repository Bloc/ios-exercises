//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

//- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
//    return (string1 == string2);
//}
//
//- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
//    return (number1 == number2);
//}

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    return [string1 isEqualToString:string2];
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    return [number1 isEqualToNumber:number2];
}

@end
