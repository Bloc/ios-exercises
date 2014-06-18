//
//  WizardOfOzTests.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import <XCTest/XCTest.h>
#import "WizardOfOz.h"

@interface WizardOfOzTests : XCTestCase

@property (nonatomic, strong) WizardOfOz *wonderfulWizard;

@end

@implementation WizardOfOzTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.wonderfulWizard = [[WizardOfOz alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatColorfulnessOfFilmIsAccuratelyPortrayed
{
    BOOL colorSwitches = [self.wonderfulWizard switchesFromBlackAndWhiteToColor];
    XCTAssertTrue(colorSwitches == YES, @"The color switches from black and white to color, but the `switchesFromBlackAndWhiteToColor` method indicated that it doesn't.");
}

- (void)testTheMainCharacterIsCorrect
{
    NSString *mainCharacter = [self.wonderfulWizard mainCharacter];
   XCTAssertEqualObjects(mainCharacter, @"Dorothy", @"Incorrect main character string returned.");
}

@end
