//
//  NumericKeypadTextField.m
//
//  Created by william pugh on 5/5/13.
//  Copyright (c) 2013 AboutObjects All rights reserved.
//

#import "NumericKeypadTextField.h"
#import "NumericKeypadViewController.h"

@implementation NumericKeypadTextField

- (UIView *)inputView
{
	UIView *view = nil;
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle: nil];
    self.numPadViewController =  (NumericKeypadViewController *)[storyboard instantiateViewControllerWithIdentifier:@"keyboard"];
    [self.numPadViewController setActionSubviews:self.numPadViewController.view];
    self.numPadViewController.delegate = self.numericKeypadDelegate;
    self.numPadViewController.numpadTextField = self;
    view = self.numPadViewController.view;
	return view;
}

@end
