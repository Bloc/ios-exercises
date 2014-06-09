//
//  SimpleCalculator.h
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import <Foundation/Foundation.h>

@interface SimpleCalculator : NSObject

- (NSInteger) increaseNumberBy1:(NSInteger) number;
- (NSInteger) addNumber:(NSInteger) number1 toNumber:(NSInteger) number2;
- (BOOL) isNumber:(NSInteger) numerator evenlyDivisibleByNumber:(NSInteger) denominator;

@end
