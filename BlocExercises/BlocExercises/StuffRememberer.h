//
//  StuffRememberer.h
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import <Foundation/Foundation.h>

@interface StuffRememberer : NSObject

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember;

- (NSMutableArray *) arrayYouShouldRemember;

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy;

- (NSMutableArray *) arrayYouShouldCopy;

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember;

- (CGFloat) floatYouShouldRemember;

@end
