//
//  JALFixedWidthLabelTests.m
//  JALFixedWidthLabelTests
//
//  Created by Jamie Ly on 08/25/2014.
//  Copyright (c) 2014 Jamie Ly. All rights reserved.
//

#include <Expecta+Snapshots/EXPMatchers+FBSnapshotTest.h>
#include <JALFixedViewLabel.h>

SpecBegin(InitialSpecs)

describe(@"manual matching", ^{
    it(@"matches view", ^{
        JALFixedViewLabel *view = [[JALFixedViewLabel alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
        view.text = @"abcdefghijklmnop";
        view.textColor = [UIColor blueColor];
        view.textFont = [UIFont systemFontOfSize: 25];
//        expect(view).to.recordSnapshotNamed(@"JALFixedViewLabel");
        expect(view).to.haveValidSnapshotNamed(@"JALFixedViewLabel");
    });
});

SpecEnd
