//
//  ViewController.m
//  Rounding
//
//  Created by william pugh on 6/7/13.
//  Copyright (c) 2013 william pugh. All rights reserved.
//

#import "ViewController.h"
#import "NumericKeypadTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.numericKeypadTextField.delegate = self;
    self.roundfLabel.hidden = YES;
    self.floorResultLabel.hidden = YES;
    self.ceilfResultLabel.hidden = YES;
    self.nearyintResultLabel.hidden = YES;
    
   /*
    The floor() functions return the largest integral value less than or equal to x.
    
    The round() functions return the integral value nearest to x rounding half-way cases away from zero,
    regardless of the current rounding direction.
    
    The ceil() functions return the smallest integral value greater than or equal to x.
    
    The nearbyint() functions return the integral value (represented as a
    double precision number) nearest to x according to the prevailing rounding mode.
    
    */

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    textField.backgroundColor = [UIColor whiteColor];
    textField.textColor = [UIColor blueColor];
    [self.numericKeypadTextField resignFirstResponder];
    
    CGFloat value = (CGFloat)[self.numericKeypadTextField.text floatValue];
    int intValue = floorf(value);
    _floorResultLabel.text = [NSString stringWithFormat:@"%d",intValue];
    
    intValue = roundf(value);
    _roundfLabel.text = [NSString stringWithFormat:@"%d",intValue];
    
    intValue = ceilf(value);
    _ceilfResultLabel.text = [NSString stringWithFormat:@"%d",intValue];
    
    intValue = nearbyint(value);
    _nearyintResultLabel.text = [NSString stringWithFormat:@"%d",intValue];
    
    intValue = rint(value);
    _rintResultLabel.text = [NSString stringWithFormat:@"%d",intValue];
    
    intValue = trunc(value);
    _truncResultLabel.text = [NSString stringWithFormat:@"%d",intValue];
    
    self.roundfLabel.hidden = NO;
    self.floorResultLabel.hidden = NO;
    self.ceilfResultLabel.hidden = NO;
    self.nearyintResultLabel.hidden = NO;
    
    
}





@end
