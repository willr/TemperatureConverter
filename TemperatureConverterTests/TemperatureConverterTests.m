//
//  TemperatureConverterTests.m
//  TemperatureConverter
//
//  Created by William Richardson on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TemperatureConverterTests.h"
#import "ViewController.h"

@implementation TemperatureConverterTests

@synthesize celsiusTextField;
@synthesize fahrenheitTextField;
@synthesize converterController;

- (void) setUp {
    [super setUp];
    converterController = [[ViewController alloc] init];
    celsiusTextField = [[FakeTextContainer alloc] init];
    fahrenheitTextField = [[FakeTextContainer alloc] init];
    
    converterController.celsiusTextField = (UITextField *)celsiusTextField;
    converterController.fahrenheitTextField = (UITextField *)fahrenheitTextField;
    
}

- (void) testThatMinusFortyCelsiusIsMinusFortyFahrenheit {
    celsiusTextField.text = @"-40";
    [converterController textFieldShouldReturn:celsiusTextField];
    
    STAssertEqualObjects(fahrenheitTextField.text, @"-40", @"In both Celsius and Fahrenheit -40 is the same temperature");
}

- (void) testThatOneHundredCelsiusIsTwoOneTwoFahrenheit {
    celsiusTextField.text = @"100";
    [converterController textFieldShouldReturn:celsiusTextField];
    
    STAssertEqualObjects(fahrenheitTextField.text, @"212", @"100 Celsius is 212 Fahrenheit");
}

- (void) testThatTextFieldShouldReturnIsTrueForArbitraryInput {
    celsiusTextField.text = @"0";
    
    ;
    
    STAssertTrue([converterController textFieldShouldReturn:celsiusTextField], @"This method should return YES to get standard TextField behavior");
}

@end
