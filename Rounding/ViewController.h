//
//  ViewController.h
//  Rounding
//
//  Created by william pugh on 6/7/13.
//  Copyright (c) 2013 william pugh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NumericKeypadTextField.h"

@interface ViewController : UIViewController
< UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet NumericKeypadTextField *numericKeypadTextField;

@property (weak, nonatomic) IBOutlet UILabel *roundfLabel;
@property (weak, nonatomic) IBOutlet UILabel *floorResultLabel;
@property (weak, nonatomic) IBOutlet UILabel *ceilfResultLabel;
@property (weak, nonatomic) IBOutlet UILabel *nearyintResultLabel;
@property (weak, nonatomic) IBOutlet UILabel *rintResultLabel;
@property (weak, nonatomic) IBOutlet UILabel *truncResultLabel;


@end
