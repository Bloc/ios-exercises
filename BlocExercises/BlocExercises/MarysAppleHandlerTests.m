//
//  MarysAppleHandlerTests.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import <XCTest/XCTest.h>
#import "MarysAppleHandler.h"

@interface MarysAppleHandlerTests : XCTestCase

@property (nonatomic, strong) MarysAppleHandler *appleHandler;

@end

@implementation MarysAppleHandlerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.appleHandler = [[MarysAppleHandler alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatMaryCannotPurchaseAnythingFor4Dollars {
    NSString *purchasableItem = [self.appleHandler itemMaryCanPurchaseForDollars:4];
    XCTAssertEqualObjects(purchasableItem, @"get out of my store", @"If Mary has $4, she should be told to get out.");
}

- (void)testThatMaryCanPurchaseGumFor5Dollars {
    NSString *purchasableItem = [self.appleHandler itemMaryCanPurchaseForDollars:5];
    XCTAssertEqualObjects(purchasableItem, @"have some gum", @"If Mary has $5, she should receive an offer to purchase gum.");
}

- (void)testThatMaryCanPurchaseAnAppleFor6Dollars {
    NSString *purchasableItem = [self.appleHandler itemMaryCanPurchaseForDollars:6];
    XCTAssertEqualObjects(purchasableItem, @"have an apple", @"If Mary has $6, she should receive an offer to purchase an apple.");
}

- (void)testThatMaryCanPurchaseAnAppleComputerFor1000Dollars {
    NSString *purchasableItem = [self.appleHandler itemMaryCanPurchaseForDollars:1000];
    XCTAssertEqualObjects(purchasableItem, @"have an Apple computer", @"If Mary has $1000+, she should receive an offer to purchase an Apple computer.");
}

- (void)testThatMaryCanPurchaseTheBigAppleFor1000000000Dollars {
    NSString *purchasableItem = [self.appleHandler itemMaryCanPurchaseForDollars:1000000000];
    XCTAssertEqualObjects(purchasableItem, @"have The Big Apple", @"If Mary has $1 billion, she should receive an offer to purchase New York City (known as The Big Apple).");
}

- (void)testThatPriceOfDiscountedVodkaIs18Dollars {
    self.appleHandler.getsDiscount = YES;
    NSUInteger cost = [self.appleHandler dollarCostForAppleFlavoredVodka];
    XCTAssertEqual(cost, 18, @"Discounted vodka should be $18.");
}

- (void)testThatPriceOfUndiscountedVodkaIs24Dollars {
    NSUInteger cost = [self.appleHandler dollarCostForAppleFlavoredVodka];
    XCTAssertEqual(cost, 24, @"Undiscounted vodka should be $24.");
}


@end
