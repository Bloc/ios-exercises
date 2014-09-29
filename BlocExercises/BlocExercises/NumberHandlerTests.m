//
//  NumberHandlerTests.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import <XCTest/XCTest.h>
#import "NumberHandler.h"

@interface NumberHandlerTests : XCTestCase

@property (nonatomic, strong) NumberHandler *handler;

@end

@implementation NumberHandlerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.handler = [[NumberHandler alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatArrayOfNumbersWorks {
    NSArray *expectedArray = @[@5, @6, @7, @8];
    NSArray *actualArray = [self.handler arrayOfNumbersBetweenNumber:5 andOtherNumber:8];
    XCTAssertEqualObjects(expectedArray, actualArray, @"Incorrect number array was returned.");

    expectedArray = @[@-4, @-3, @-2, @-1, @0];
    actualArray = [self.handler arrayOfNumbersBetweenNumber:-4 andOtherNumber:0];
    XCTAssertEqualObjects(expectedArray, actualArray, @"Incorrect number array was returned.");    
}

- (void) testThatLowestNumberIsReturned {
    NSInteger lowestNumber = [self.handler lowestNumberInArray:@[@3, @8, @-4, @0]];
    XCTAssertEqual(lowestNumber, -4, @"Lowest number should be -4.");

    lowestNumber = [self.handler lowestNumberInArray:@[@83, @124, @422, @953, @1004, @9532, @-1000]];
    XCTAssertEqual(lowestNumber, -1000, @"Lowest number should be -1000.");    
}

- (void) testThatNumberDoublingWorks {
    NSNumber *bigNumber = [self.handler numberThatIsTwiceAsBigAsNumber:@8];
    XCTAssertEqualObjects(bigNumber, @16, @"8 * 2 = 16");

    bigNumber = [self.handler numberThatIsTwiceAsBigAsNumber:@-17];
    XCTAssertEqualObjects(bigNumber, @-34, @"-17 * 2 = -34");
}

@end
