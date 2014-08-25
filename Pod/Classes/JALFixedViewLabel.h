//
//  JALFixedViewLabel.h
//  fixedwidthlabel
//
//  Created by Jamie Ly on 8/25/14.
//  Copyright (c) 2014 Jamie Ly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JALFixedViewLabel : UIView
@property (nonatomic, copy) NSString* text;
@property (nonatomic, assign) NSInteger charactersPerRow;
@property (nonatomic, copy) UIFont *textFont;
@property (nonatomic, copy) UIColor *textColor;
@end
