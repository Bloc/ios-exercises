//
//  WizardOfOz.h
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import <Foundation/Foundation.h>

@interface WizardOfOz : NSObject

/**
 Indicates whether Wizard of Oz switches from black and white to color in the middle of the movie.
 
 @see http://www.youtube.com/watch?v=x6D8PAGelN8

 @return @c YES if it does, or @c NO if it doesn't.
 */
- (BOOL) switchesFromBlackAndWhiteToColor;
- (NSString *) mainCharacter;

@end
