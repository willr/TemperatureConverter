//
//  ViewController.m
//  TemperatureConverter
//
//  Created by William Richardson on 4/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize celsiusTextField;
@synthesize fahrenheitTextField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - UITextFieldDelegate Protocol

- (BOOL)textFieldShouldReturn: (UITextField *)txtField {
    double celsius;
    double fahrenheit;
    
    if (txtField == celsiusTextField) {
        celsius = [[txtField text] doubleValue];
        fahrenheit = celsius * (9.0/5.0) + 32.0;
        fahrenheitTextField.text = [NSString stringWithFormat:@"%.0f", fahrenheit];
    } else {
        fahrenheit = [[txtField text] doubleValue];
        celsius = (fahrenheit - 32) * 5.0/9.0;
        celsiusTextField.text = [NSString stringWithFormat:@"%.0f", celsius];
    }
    
    
    return YES;
}

@end
