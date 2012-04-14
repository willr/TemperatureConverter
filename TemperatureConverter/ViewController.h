//
//  ViewController.h
//  TemperatureConverter
//
//  Created by William Richardson on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (strong) IBOutlet UITextField *celsiusTextField;
@property (strong) IBOutlet UITextField *fahrenheitTextField;

- (BOOL)textFieldShouldReturn: (id)celsiusTextField;

@end
