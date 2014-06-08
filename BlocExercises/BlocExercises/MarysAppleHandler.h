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

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars;
- (NSUInteger) dollarCostForAppleFlavoredVodka;

@end
