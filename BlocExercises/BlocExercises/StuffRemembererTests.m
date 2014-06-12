//
//  StuffRemembererTests.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import <XCTest/XCTest.h>
#import "StuffRememberer.h"

@interface StuffRemembererTests : XCTestCase

@property (nonatomic, strong) StuffRememberer *rememberer;

@end

@implementation StuffRemembererTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.rememberer = [[StuffRememberer alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatArrayIsRemembered
{
    NSMutableArray *someArray = [@[@"string", @123, @{@"key": @"value"}, @[@"an array of 1 string"]] mutableCopy];
    [self.rememberer rememberThisArrayForLater:someArray];
    NSMutableArray *otherArray = [self.rememberer arrayYouShouldRemember];
    XCTAssertEqual(someArray, otherArray, @"These aren't the same array.");
}

- (void)testThatArrayIsCopied
{
    NSMutableArray *someArray = [@[@"string", @123, @{@"key": @"value"}, @[@"an array of 1 string"]] mutableCopy];
    [self.rememberer copyThisArrayForLater:someArray];
    NSMutableArray *otherArray = [self.rememberer arrayYouShouldCopy];
    XCTAssertEqualObjects(someArray, otherArray, @"These arrays aren't equal.");
    XCTAssertNotEqual(someArray, otherArray, @"These arrays are the same instance, but one is supposed to be a copy of the other.");
}

- (void)testThatFloatIsRemembered
{
    CGFloat someFloat = 3.14159265359;
    [self.rememberer rememberThisFloatForLater:someFloat];
    CGFloat otherFloat = [self.rememberer floatYouShouldRemember];
    
    XCTAssertEqual(someFloat, otherFloat, @"The two floats aren't equal.");
}

@end
