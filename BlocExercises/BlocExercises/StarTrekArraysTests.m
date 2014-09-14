//
//  StarTrekArraysTests.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import <XCTest/XCTest.h>
#import "StarTrekArrays.h"

@interface StarTrekArraysTests : XCTestCase

@property (nonatomic, strong) NSString *worf;
@property (nonatomic, strong) NSString *picard;
@property (nonatomic, strong) NSString *crusher;

@property (nonatomic, strong) StarTrekArrays *starTrekArrays;

@end

@implementation StarTrekArraysTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.worf = @"Worf, son of Mogh, slayer of Gowron";
    self.picard = @"Captain Jean-Luc Picard of the USS Enterprise";
    self.crusher = @"Beverly Crusher, Chief Medical Officer";

    self.starTrekArrays = [[StarTrekArrays alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testThatStringsAreTurnedIntoArraysProperly {
    NSString *testString = [NSString stringWithFormat:@"%@;%@;%@", self.worf, self.picard, self.crusher];
    NSArray *expectedArray = @[self.worf, self.picard, self.crusher];
    NSArray *actualArray = [self.starTrekArrays arrayOfStarTrekCharactersFromString:testString];
    XCTAssertEqualObjects(expectedArray, actualArray, @"The returned array was different than expected.");

    testString = [NSString stringWithFormat:@"%@;%@;%@", self.picard, self.crusher, self.worf];
    expectedArray = @[self.picard, self.crusher, self.worf];
    actualArray = [self.starTrekArrays arrayOfStarTrekCharactersFromString:testString];
    XCTAssertEqualObjects(expectedArray, actualArray, @"The returned array was different than expected.");
}

- (void) testThatArraysAreTurnedIntoStringsProperly {
    NSArray *testArray = @[self.worf, self.picard, self.crusher];
    NSString *expectedString = [NSString stringWithFormat:@"%@;%@;%@", self.worf, self.picard, self.crusher];
    NSString *actualString = [self.starTrekArrays stringOfStarTrekCharactersFromArray:testArray];
    XCTAssertEqualObjects(expectedString, actualString, @"The returned string was different than expected.");

    testArray = @[self.picard, self.crusher, self.worf];
    expectedString = [NSString stringWithFormat:@"%@;%@;%@", self.picard, self.crusher, self.worf];
    actualString = [self.starTrekArrays stringOfStarTrekCharactersFromArray:testArray];
    XCTAssertEqualObjects(expectedString, actualString, @"The returned string was different than expected.");
}

- (void) testThatAlphabetizationWorks {
    NSArray *inputArray = @[self.worf, self.picard, self.crusher];
    NSArray *expectedArray = @[self.crusher, self.picard, self.worf];
    NSArray *actualArray = [self.starTrekArrays alphabeticallySortedStarTrekCharactersFromArray:inputArray];
    XCTAssertEqualObjects(expectedArray, actualArray, @"Alphabetization didn't work correctly.");

    inputArray = @[self.picard, self.crusher];
    expectedArray = @[self.crusher, self.picard];
    actualArray = [self.starTrekArrays alphabeticallySortedStarTrekCharactersFromArray:inputArray];
    XCTAssertEqualObjects(expectedArray, actualArray, @"Alphabetization didn't work correctly.");
}

- (void) testThatCharacterArrayDetectsWorfIfPresent {
    NSArray *inputArray = @[self.picard, self.crusher, self.worf];
    BOOL worfIsPresent = [self.starTrekArrays characterArrayContainsWorf:inputArray];
    XCTAssertTrue(worfIsPresent, @"Worf was present, but wasn't detected correctly.");
}

- (void) testThatCharacterArrayDoesNotDetectWorfIfNotPresent {
    NSArray *inputArray = @[self.picard, self.crusher, @"Barclay"];
    BOOL worfIsPresent = [self.starTrekArrays characterArrayContainsWorf:inputArray];
    XCTAssertFalse(worfIsPresent, @"Worf was falsely detected.");
}

@end
