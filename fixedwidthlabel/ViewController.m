//
//  ViewController.m
//  fixedwidthlabel
//
//  Created by Jamie Ly on 8/25/14.
//  Copyright (c) 2014 Jamie Ly. All rights reserved.
//

#import "ViewController.h"
#import "JALFixedViewLabel.h"

@interface ViewController ()
@property (nonatomic, strong) IBOutlet JALFixedViewLabel* labelView;
@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    self.labelView.text = @"abcdefghijklmnop";
    self.labelView.textColor = [UIColor blueColor];
    self.labelView.textFont = [UIFont systemFontOfSize: 25];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
