//
//  TemperatureConversionTests.m
//  TemperatureConverter
//
//  Created by William Richardson on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TemperatureConversionTests.h"
#import "FakeTextContainer.h"

@implementation TemperatureConversionTests
// @synthesize textField;
@synthesize fahrenheitLabel;

- (BOOL)textFieldShouldReturn: (id)celsiusField {
    return YES;
}

- (void)testThatMinusFortyCelsiusIsMinusFortyFahrenheit {
    FakeTextContainer *textField = [[FakeTextContainer alloc] init];
    fahrenheitLabel = [[FakeTextContainer alloc] init];
    
    textField.text = @"-40";
    
    [self textFieldShouldReturn: textField];
    
}

@end
