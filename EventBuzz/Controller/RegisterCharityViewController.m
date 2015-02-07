//
//  RegisterCharityViewController.m
//  EventBuzz
//
//  Created by ARMIN on 7/02/2015.
//  Copyright (c) 2015 ARMIN. All rights reserved.
//

#import "RegisterCharityViewController.h"

@interface RegisterCharityViewController ()
@property (weak, nonatomic) IBOutlet UITextField *charityNameField;
@property (weak, nonatomic) IBOutlet UITextField *ABNField;
@property (weak, nonatomic) IBOutlet UITextField *DescriptionName;
@property (weak, nonatomic) IBOutlet UITextField *PaymantField;
@property (weak, nonatomic) IBOutlet UITextField *CCNumberField;

@end

@implementation RegisterCharityViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.charityNameField setDelegate:self];
    [self.ABNField setDelegate:self];
    [self.DescriptionName setDelegate:self];
    [self.PaymantField setDelegate:self];
    [self.CCNumberField setDelegate:self];
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return TRUE;
}

- (IBAction)registerCharity:(UIButton *)sender {
}

@end
