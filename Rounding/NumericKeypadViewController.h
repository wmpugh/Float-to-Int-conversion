//
//  KeyboardViewController.h
//  FormTableViewController
//
//  Created by william pugh on 5/5/13.
//  Copyright (c) 2013 AboutObjects All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumericKeypadViewController : UIViewController

@property(strong, nonatomic) UITextField *numpadTextField;
@property(weak, nonatomic) id delegate;
@property(weak, nonatomic) IBOutlet UIButton *saveButton;
@property(weak, nonatomic) IBOutlet UIButton *backButton;
@property(weak, nonatomic) IBOutlet UIButton *decimalButton;

- (void)setActionSubviews:(UIView *)view;

- (IBAction)keypadButtonTapped:(id)sender;

@end
