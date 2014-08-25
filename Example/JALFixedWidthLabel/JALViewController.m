//
//  JALViewController.m
//  JALFixedWidthLabel
//
//  Created by Jamie Ly on 08/25/2014.
//  Copyright (c) 2014 Jamie Ly. All rights reserved.
//

#import "JALViewController.h"
#import <JALFixedViewLabel.h>

@interface JALViewController ()
@property (nonatomic, strong) IBOutlet JALFixedViewLabel* labelView;
@end

@implementation JALViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.labelView.text = @"abcdefghijklmnop";
    self.labelView.textColor = [UIColor blueColor];
    self.labelView.textFont = [UIFont systemFontOfSize: 25];
}

@end
