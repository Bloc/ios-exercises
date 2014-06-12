//
//  StuffRememberer.h
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import <Foundation/Foundation.h>

@interface StuffRememberer : NSObject

/**
 Indicates a mutable array to remember for later.
 
 @param arrayToRemember A mutable array.
 */
- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember;

/**
 Provides the remembered mutable array.
 
 @return The remembered mutable array, or @c nil if none was provided.
 */
- (NSMutableArray *) arrayYouShouldRemember;

/**
 Indicates a mutable array to copy for later.
 
 @param arrayToCopy A mutable array.
 */
- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy;

/**
 Provides a copy of the initially provided mutable array.
 
 @return The copied mutable array, or @c nil if none was provided.
 */
- (NSMutableArray *) arrayYouShouldCopy;

/**
 Indicates a float to remember for later.
 
 @param floatToRemember A float.
 */
- (void) rememberThisFloatForLater:(CGFloat)floatToRemember;

/**
 Provides the remembered float.
 
 @return The remembered float, or @c NSNotFound if none was provided.
 */
- (CGFloat) floatYouShouldRemember;

@end
