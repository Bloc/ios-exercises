//
//  SimpleCalculatorTests.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import <XCTest/XCTest.h>
#import "SimpleCalculator.h"

@interface SimpleCalculatorTests : XCTestCase

@property (nonatomic, strong) SimpleCalculator *calculator;

@end

@implementation SimpleCalculatorTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.calculator = [[SimpleCalculator alloc] init];
}

- (void) testThatIncrementsWork {
    NSInteger sourceNumber = 17;
    NSInteger resultNumber = [self.calculator increaseNumberBy1:sourceNumber];
    XCTAssertTrue(resultNumber == 18, @"17 + 1 = 18");
}

- (void) testThatAdditionWorks {
    NSInteger firstOperand = 17;
    NSInteger secondOperand = 3;
    NSInteger resultNumber = [self.calculator addNumber:firstOperand toNumber:secondOperand];
    XCTAssertTrue(resultNumber == 20, @"17 + 3 = 20");
}

- (void) testThatDivisionWorks {
    NSInteger numerator = 15;
    NSInteger denominator1 = 5;
    
    BOOL isEvenlyDivisible = [self.calculator isNumber:numerator evenlyDivisibleByNumber:denominator1];
    
    XCTAssertTrue(isEvenlyDivisible, @"15 / 5 = 3");
    
    NSInteger denominator2 = 4;
    BOOL isEvenlyDivisible2 = [self.calculator isNumber:numerator evenlyDivisibleByNumber:denominator2];
    
    XCTAssertFalse(isEvenlyDivisible2, @"15 / 5 = 3");
}


- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

@end
