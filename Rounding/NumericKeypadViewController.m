//
//  KeyboardViewController.m
//  FormTableViewController
//
//  Created by william pugh on 5/5/13.
//  Copyright (c) 2013 AboutObjects All rights reserved.
//

#import "NumericKeypadViewController.h"
#import "NumericKeypadTextField.h"

@interface NumericKeypadViewController ()

@end

@implementation NumericKeypadViewController


- (void)viewDidLoad
{
	[super viewDidLoad];
	self.view.backgroundColor = [UIColor grayColor];
	NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
	[self.decimalButton setTitle:formatter.decimalSeparator forState:UIControlStateNormal];    
}


- (void)setActionSubviews:(UIView *)view
{
	for (UIButton *button in view.subviews)
    {
		if ([button isKindOfClass:[UIButton class]])
        {
			[button addTarget:self action:@selector(keypadButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
		}
	}
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}






- (IBAction)keypadButtonTapped:(id)sender
{
  	UIButton *button = (UIButton *) sender;
	[[UIDevice currentDevice] playInputClick];
	if (button == self.backButton)
    {
		[self.numpadTextField deleteBackward];
	}
    else if (button == self.saveButton)
    {
        [self.numpadTextField.delegate  textFieldDidEndEditing:_numpadTextField];
	}
    else
    {
		BOOL shouldChangeCharacters = YES;
		UITextRange *selectedTextRange = self.numpadTextField.selectedTextRange;
		NSUInteger location = (NSUInteger)[self.numpadTextField offsetFromPosition:self.numpadTextField.beginningOfDocument
                                                                        toPosition:selectedTextRange.start];
		NSUInteger length = (NSUInteger)[self.numpadTextField offsetFromPosition:selectedTextRange.start
                                                                      toPosition:selectedTextRange.end];
		NSRange selectedRange = NSMakeRange(location, length);
		if ([self.numpadTextField.delegate respondsToSelector:@selector(textField:shouldChangeCharactersInRange:replacementString:)])
        {
			shouldChangeCharacters = [self.numpadTextField.delegate textField:self.numpadTextField shouldChangeCharactersInRange:selectedRange replacementString:button.titleLabel.text];
		}
		if (shouldChangeCharacters)
        {
			[self.numpadTextField replaceRange:self.numpadTextField.selectedTextRange withText:button.titleLabel.text];
		}
    }
}

@end
