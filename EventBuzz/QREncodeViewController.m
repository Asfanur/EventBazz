//
//  QREncodeViewController.m
//  EventBuzz
//
//  Created by Asfanur Arafin on 7/02/2015.
//  Copyright (c) 2015 ARMIN. All rights reserved.
//

#import "QREncodeViewController.h"
#import "UIImage+MDQRCode.h"


@interface QREncodeViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *codeView;

@end

@implementation QREncodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.codeView.image = [UIImage mdQRCodeForString:@"Hello, world!" size:self.codeView.bounds.size.width fillColor:[UIColor darkGrayColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
