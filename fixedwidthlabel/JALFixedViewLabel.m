//
//  JALFixedViewLabel.m
//  fixedwidthlabel
//
//  Created by Jamie Ly on 8/25/14.
//  Copyright (c) 2014 Jamie Ly. All rights reserved.
//

#import "JALFixedViewLabel.h"

@interface JALFixedViewLabel()
@property (nonatomic, assign) CGFloat columnPadding;
@property (nonatomic, assign) CGFloat rowPadding;
@end

@implementation JALFixedViewLabel

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame: frame];
    if(self) {
        [self initializeProperties];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder: aDecoder];
    if(self) {
        [self initializeProperties];
    }
    return self;
}

- (void) initializeProperties {
    self.charactersPerRow = 5;

    self.textColor = [UIColor blackColor];
    
    // needs to happen last because of computations that run
    self.textFont = [UIFont systemFontOfSize: [UIFont systemFontSize]];
}

- (NSArray*) charactersInString: (NSString*) str {
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < [str length]; i++) {
        NSString *ch = [str substringWithRange:NSMakeRange(i, 1)];
        [array addObject:ch];
    }
    return [array copy];
}

- (NSDictionary*) stringAttributes {
    return @{
             NSForegroundColorAttributeName: self.textColor,
             NSFontAttributeName: self.textFont
             };
}

- (void)setTextFont:(UIFont *)textFont {
    _textFont = [textFont copy];
    CGSize size = [self characterSize];
    CGFloat paddingFactory = 1.2;
    self.columnPadding = size.width * paddingFactory;
    self.rowPadding = size.height * paddingFactory;
}

// The character size of a really big character using the given font
- (CGSize) characterSize {
    return [@"W" sizeWithAttributes: [self stringAttributes]];
}

- (void)drawRect:(CGRect)rect
{
    NSArray *parts = [self charactersInString: self.text];
    NSDictionary *attrs = [self stringAttributes];
    
    int j = 0;
    NSInteger i = 0;
    for(NSString *part in parts) {
        NSAttributedString* attrString = [[NSAttributedString alloc] initWithString: part attributes: attrs];
        [attrString drawAtPoint: CGPointMake(i*self.columnPadding, j*self.rowPadding)];
        i++;
        if(i >= self.charactersPerRow) {
            j++;
            i = 0;
        }
    }
    
}

@end
