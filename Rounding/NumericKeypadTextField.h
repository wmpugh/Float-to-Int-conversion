//
//  NumericKeypadTextField.h
//  NumericKeypad
//
//  Created by william pugh on 5/5/13.
//  Copyright (c) 2013 AboutObjects All rights reserved.
//

#import <UIKit/UIKit.h>

@class NumericKeypadViewController;

//@protocol NumericKeypadDelegate
//- (void)saveActionFormTextField:(UITextField *)textField;
//@end;

@interface NumericKeypadTextField : UITextField

@property(strong, nonatomic) NumericKeypadViewController *numPadViewController;
@property(nonatomic, weak) id numericKeypadDelegate;

@end
