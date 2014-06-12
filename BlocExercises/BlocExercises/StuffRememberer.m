//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToRemember {
    
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    
}

- (NSMutableArray *) arrayYouShouldRemember {
    return [@[] mutableCopy];
}

- (NSMutableArray *) arrayYouShouldCopy {
    return [@[] mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    return 0.0f;
}

@end