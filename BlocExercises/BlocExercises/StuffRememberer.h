//
//  StuffRememberer.h
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import <Foundation/Foundation.h>

@interface StuffRememberer : NSObject

/*
 
 In this class, there are three pairs of methods.
 
 In the first, an argument is provided.  In your implementation you should store this in the appropriate kind of @property.
 
 In the second method, you should provide the appropriate response:
 
  1. In `arrayYouShouldRemember`, return the array provided in `rememberThisArrayForLater:`.
 
  2. In `arrayYouShouldCopy`, return a copy of the array provided in `copyThisArrayForLater:`.
 
  3. In `floatYouShouldRemember`, return the float value provided in `rememberThisFloatForLater:`.
 
 */

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

// --------------------------------------------------------------------

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

// --------------------------------------------------------------------

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
