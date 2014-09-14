//
//  EqualityDeterminerTests.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import <XCTest/XCTest.h>
#import "EqualityDeterminer.h"

@interface EqualityDeterminerTests : XCTestCase

@property (nonatomic, strong) EqualityDeterminer *determiner;

@end

@implementation EqualityDeterminerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.determiner = [[EqualityDeterminer alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testThatTwoStringsAreEqual {
    NSString *cerealString = [[NSString alloc] initWithFormat:@"Cheerios"];
    NSString *identicalCerealString = @"Cheerios";
    BOOL cerealEquality = [self.determiner string:cerealString isTheSameAsString:identicalCerealString];
    XCTAssertTrue(cerealEquality, @"Cereals should be equal.");
}

- (void) testThatTwoStringsAreInequal {
    NSString *cerealString = [[NSString alloc] initWithFormat:@"Cheerios"];
    NSString *secondCerealString = @"Trix";
    BOOL cerealEquality = [self.determiner string:cerealString isTheSameAsString:secondCerealString];
    XCTAssertFalse(cerealEquality, @"Cereals should not be equal.");
}

- (void) testThatTwoNumbersAreEqual {
    NSNumber *sixNumber = [NSNumber numberWithFloat:6];
    NSNumber *identicalSixNumber = [NSNumber numberWithInt:6];
    BOOL numberEquality = [self.determiner number:sixNumber isTheSameAsNumber:identicalSixNumber];
    XCTAssertTrue(numberEquality, @"Six should be equal to six.");
}

- (void) testThatTwoNumbersAreInequal {
    NSNumber *sixNumber = [NSNumber numberWithFloat:6];
    NSNumber *sevenNumber = [NSNumber numberWithInt:7];
    BOOL numberEquality = [self.determiner number:sixNumber isTheSameAsNumber:sevenNumber];
    XCTAssertFalse(numberEquality, @"Six should not be equal to seven.");
}

- (void) testIntegerInequalityTrue {
    NSInteger high = 7;
    NSInteger low = 4;
    BOOL highIsGreater = [self.determiner integer:high isGreaterThan:low];
    XCTAssertTrue(highIsGreater, @"7 is greater than 4.");
}

- (void) testIntegerInequalityFalse {
    NSInteger high = 4;
    NSInteger low = 7;
    BOOL highIsGreater = [self.determiner integer:high isGreaterThan:low];
    XCTAssertFalse(highIsGreater, @"7 is greater than 4.");
}

@end
