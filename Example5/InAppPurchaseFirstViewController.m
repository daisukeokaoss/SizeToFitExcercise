//
//  InAppPurchaseFirstViewController.m
//  Example5
//
//  Created by おかやん on 2014/08/16.
//  Copyright (c) 2014年 ナノソフトウェア. All rights reserved.
//

#import "InAppPurchaseFirstViewController.h"

@interface InAppPurchaseFirstViewController ()
- (IBAction)Expand:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *ExpandLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;

@end

@implementation InAppPurchaseFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Expand:(UIButton *)sender {
    //[self.ExpandLabel setNumberOfLines:0];

    [self.ExpandLabel setText:@"---------------------------------------------------------------------------------------------------------------"];
    [self.ExpandLabel sizeToFit];
    
    //[self.ExpandLabel sizeToFit];
    [self.myScrollView setContentSize:CGSizeMake(self.myScrollView.bounds.size.height,[self.ExpandLabel sizeThatFits:CGSizeMake(1000.0, 100.0)].width + 38)];
    [self.myScrollView sizeToFit];
    
}
@end
