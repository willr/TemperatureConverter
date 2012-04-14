//
//  TemperatureConverterTests.m
//  TemperatureConverter
//
//  Created by William Richardson on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <OCMock/OCMock.h>

#import "TemperatureConverterTests.h"
#import "ViewController.h"

@implementation TemperatureConverterTests

@synthesize celsiusTextField;
@synthesize fahrenheitTextField;
@synthesize converterController;

- (void) setUp {
    [super setUp];
    converterController = [[ViewController alloc] init];
    // celsiusTextField = [[FakeTextContainer alloc] init];
    // fahrenheitTextField = [[FakeTextContainer alloc] init];
    celsiusTextField = [OCMockObject mockForClass: [UITextField class]];
    fahrenheitTextField = [OCMockObject mockForClass: [UITextField class]];
    
    converterController.celsiusTextField = (UITextField *)celsiusTextField;
    converterController.fahrenheitTextField = (UITextField *)fahrenheitTextField;
    
}

- (void) testThatMinusFortyCelsiusIsMinusFortyFahrenheit {
    // celsiusTextField.text = @"-40";
    [[[celsiusTextField stub] andReturn: @"-40"] text];
    [[fahrenheitTextField expect] setText: @"-40"];
    
    [converterController textFieldShouldReturn:celsiusTextField];
    
    [fahrenheitTextField verify];
    [celsiusTextField verify];
    
    // STAssertEqualObjects(fahrenheitTextField.text, @"-40", @"In both Celsius and Fahrenheit -40 is the same temperature");
}

- (void) testThatOneHundredCelsiusIsTwoOneTwoFahrenheit {
    // celsiusTextField.text = @"100";
    [[[celsiusTextField stub] andReturn: @"100"] text];
    [[fahrenheitTextField expect] setText: @"212"];
    
    [converterController textFieldShouldReturn:celsiusTextField];
    
    [fahrenheitTextField verify];
    [celsiusTextField verify];
    
    // STAssertEqualObjects(fahrenheitTextField.text, @"212", @"100 Celsius is 212 Fahrenheit");
}

- (void) testThatTwoOneTwoFahrenheitIsOneHundredCelsius {
    // celsiusTextField.text = @"100";
    [[[fahrenheitTextField stub] andReturn: @"212"] text];
    [[celsiusTextField expect] setText: @"100"];
    
    [converterController textFieldShouldReturn:fahrenheitTextField];
    
    [fahrenheitTextField verify];
    [celsiusTextField verify];
    
    // STAssertEqualObjects(fahrenheitTextField.text, @"212", @"100 Celsius is 212 Fahrenheit");
}

- (void) testThatTextFieldShouldReturnIsTrueForArbitraryInput {
    // celsiusTextField.text = @"0";
    
    [[[celsiusTextField stub] andReturn: @"0"] text];
    [[fahrenheitTextField expect] setText: @"32"];
    
    STAssertTrue([converterController textFieldShouldReturn:celsiusTextField], @"This method should return YES to get standard TextField behavior");
    
    [celsiusTextField verify];
    [fahrenheitTextField verify];
}

@end
