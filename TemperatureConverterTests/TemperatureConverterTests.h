//
//  TemperatureConverterTests.h
//  TemperatureConverter
//
//  Created by William Richardson on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "FakeTextContainer.h"
#import "ViewController.h"

@interface TemperatureConverterTests : SenTestCase

@property (nonatomic, strong) FakeTextContainer *celsiusTextField;
@property (nonatomic, strong) FakeTextContainer *fahrenheitTextField;
@property (nonatomic, strong) ViewController *converterController;

@end
