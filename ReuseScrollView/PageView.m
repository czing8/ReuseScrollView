//
//  PageView.m
//  ReuseScrollView
//
//  Created by Vols on 15/4/14.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "PageView.h"

@implementation PageView

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithReuseIdentifier:reuseIdentifier];
    if (self) {
        self.label = [[UILabel alloc]initWithFrame:self.bounds];
        self.label.textAlignment = NSTextAlignmentCenter;
        self.label.font = [UIFont boldSystemFontOfSize:30.f];
        self.label.textColor = [UIColor whiteColor];
        self.label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.label.backgroundColor = [UIColor clearColor];
        [self addSubview:self.label];
        self.label.text = @"unknown";
    }
    return self;
}

- (void)setText:(NSString *)str {
    self.label.text = str;
}

@end
