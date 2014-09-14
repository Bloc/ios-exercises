//
//  StarTrekDictionariesTests.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import <XCTest/XCTest.h>
#import "StarTrekDictionaries.h"

@interface StarTrekDictionariesTests : XCTestCase

@property (nonatomic, strong) StarTrekDictionaries *starTrekDictionaries;

@property (nonatomic, strong) NSDictionary *worf;
@property (nonatomic, strong) NSDictionary *picard;

@end

@implementation StarTrekDictionariesTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.starTrekDictionaries = [[StarTrekDictionaries alloc] init];
    
    self.worf = @{@"name": @"Worf",
                  @"rank": @"lieutenant",
                  @"information": @"son of Mogh, slayer of Gowron",
                  @"favorite drink": @"prune juice",
                  @"quote" : @"Today is a good day to die."};

    self.picard = @{@"name": @"Jean-Luc Picard",
                    @"rank": @"captain",
                    @"information": @"Captain of the USS Enterprise",
                    @"favorite drink": @"tea, Earl Grey, hot"};

}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) testThatFavoriteDrinkWorks {
    NSString *favoriteDrink = [self.starTrekDictionaries favoriteDrinkForStarTrekCharacterDictionary:self.worf];
    XCTAssertEqualObjects(favoriteDrink, @"prune juice", @"Prune Juice is Worf's favorite drink.");

    favoriteDrink = [self.starTrekDictionaries favoriteDrinkForStarTrekCharacterDictionary:self.picard];
    XCTAssertEqualObjects(favoriteDrink, @"tea, Earl Grey, hot", @"tea, Earl Grey, hot is Picard's favorite drink.");
}

- (void) testThatDrinkArrayWorks {
    NSArray *characterArray = @[self.worf, self.picard];
    NSArray *expectedArray = @[@"prune juice", @"tea, Earl Grey, hot"];
    NSArray *actualArray = [self.starTrekDictionaries arrayOfFavoriteDrinksForStarTrekCharacters:characterArray];
    XCTAssertEqualObjects(expectedArray, actualArray, @"Incorrect favorite drinks were returned.");

    characterArray = @[self.picard, self.worf];
    expectedArray = @[@"tea, Earl Grey, hot", @"prune juice"];
    actualArray = [self.starTrekDictionaries arrayOfFavoriteDrinksForStarTrekCharacters:characterArray];
    XCTAssertEqualObjects(expectedArray, actualArray, @"Incorrect favorite drinks were returned.");
}

- (void) testThatQuoteWasAdded {
    NSDictionary *resultDictionary = [self.starTrekDictionaries dictionaryWithQuoteAddedToStarTrekCharacterDictionary:self.picard];
    
    NSString *quote = resultDictionary[@"quote"];
    
    XCTAssertNotNil(quote, @"A quote was not included.");
    XCTAssertTrue([quote isKindOfClass:[NSString class]], @"A quote was included, but it wasn't a string.");
    XCTAssertTrue(quote.length > 0, @"A quote was included, but it was blank.");
}

/*
 - (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary;
 
 - (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray;
 
 - (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary;*/

@end
