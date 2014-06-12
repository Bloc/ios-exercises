//
//  MarysAppleHandler.h
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import <Foundation/Foundation.h>

@interface MarysAppleHandler : NSObject

@property (nonatomic, assign) BOOL getsDiscount;

/**
 Indicates which item Mary can purchase, given an amount of dollars.
 
 See `MarysAppleHandlerTests` for all expected results.
 
 Example usage:
 
 @code
 NSString *itemPhrase = [handler itemMaryCanPurchaseForDollars:7];
 // itemPhrase is "have an apple".
 @endcode
 
 @param dollars
 The most amount of money that Mary is able and willing to spend
 
 @return Returns an item phrase.
 */
- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars;

/**
 Indicates the cost of Apple-flavored vodka in dollars.
 
 This method assumes Mary is of legal drinking age.
 
 Example usage:
 
 @code
 NSUInteger cost = [handler dollarCostForAppleFlavoredVodka];
 @endcode
 
 @param dollars
 The most amount of money that Mary is able and willing to spend, in dollars

 @return @c 24 if @c getsDiscount is set to @c NO; otherwise @c 18.
 */
- (NSUInteger) dollarCostForAppleFlavoredVodka;

@end
