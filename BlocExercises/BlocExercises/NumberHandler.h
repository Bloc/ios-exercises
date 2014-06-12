//
//  NumberHandler.h
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import <Foundation/Foundation.h>

@interface NumberHandler : NSObject

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number;

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber;

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers;

@end
