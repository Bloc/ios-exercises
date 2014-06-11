//
//  AwesomeCounterTests.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import <XCTest/XCTest.h>
#import "AwesomeCounter.h"

@interface AwesomeCounterTests : XCTestCase

@property (nonatomic, strong) AwesomeCounter *counter;

@end

@implementation AwesomeCounterTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.counter = [[AwesomeCounter alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatStringWorksAscending {
    NSInteger lowNumber = -7;
    NSInteger highNumber = 13;
    NSString *expectedString = @"-7-6-5-4-3-2-1012345678910111213";
    NSString *actualString = [self.counter stringWithNumbersBetweenNumber:lowNumber andOtherNumber:highNumber];
    XCTAssertEqualObjects(expectedString, actualString, @"strings differed");
}

- (void)testThatStringWorksDescending {
    NSInteger lowNumber = 9;
    NSInteger highNumber = 4;
    NSString *expectedString = @"456789";
    NSString *actualString = [self.counter stringWithNumbersBetweenNumber:lowNumber andOtherNumber:highNumber];
    XCTAssertEqualObjects(expectedString, actualString, @"strings differed");
}

- (void)testThatStringWorksEqual {
    NSInteger lowNumber = 94;
    NSInteger highNumber = 94;
    NSString *expectedString = @"94";
    NSString *actualString = [self.counter stringWithNumbersBetweenNumber:lowNumber andOtherNumber:highNumber];
    XCTAssertEqualObjects(expectedString, actualString, @"strings differed");
}

@end
