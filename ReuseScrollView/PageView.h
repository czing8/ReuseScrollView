//
//  PageView.h
//  ReuseScrollView
//
//  Created by Vols on 15/4/14.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "VReuseScrollView.h"

@interface PageView : VReuseView

@property (nonatomic, strong) UILabel *label;

- (void)setText:(NSString *)str;

@end
