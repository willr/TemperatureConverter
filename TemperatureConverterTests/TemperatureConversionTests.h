//
//  TemperatureConversionTests.h
//  TemperatureConverter
//
//  Created by William Richardson on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FakeTextContainer.h"

@interface TemperatureConversionTests : NSObject

// @property (nonatomic, strong) FakeTextContainer *textField;
@property (nonatomic, strong) FakeTextContainer *fahrenheitLabel;

- (BOOL)textFieldShouldReturn: (id)celsiusField;

@end
