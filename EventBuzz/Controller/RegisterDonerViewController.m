//
//  RegisterDonerViewController.m
//  EventBuzz
//
//  Created by ARMIN on 7/02/2015.
//  Copyright (c) 2015 ARMIN. All rights reserved.
//

#import "RegisterDonerViewController.h"

@interface RegisterDonerViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UITextField *paymentField;
@property (weak, nonatomic) IBOutlet UITextField *ccNumberField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;

@end

@implementation RegisterDonerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.nameField setDelegate:self];
    [self.phoneField setDelegate:self];
    [self.paymentField setDelegate:self];
    [self.ccNumberField setDelegate:self];
    [self.emailField setDelegate:self];
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return TRUE;
}

@end
