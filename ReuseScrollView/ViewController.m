//
//  ViewController.m
//  ReuseScrollView
//
//  Created by Vols on 15/4/14.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "ViewController.h"
#import "VReuseScrollView.h"
#import "PageView.h"

@interface ViewController () <VReuseScrollViewDelegate>

@property (nonatomic, strong) VReuseScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;    
    [self displayUIs];
}



- (void) displayUIs {
    [self.view addSubview:self.scrollView];
    
    [self.scrollView reloadData];
}


- (VReuseView *)scrollView:(VReuseScrollView *)scrollView viewForItemAtIndex:(NSInteger)index {
    static NSString *str = @"view";
    PageView *view = [scrollView dequeueReusableViewWithIdentifier:str];
    if (!view) {
        view = [[PageView alloc] initWithReuseIdentifier:str];
    }
    
    [view setText:[NSString stringWithFormat:@"%ld", (long)index]];
    
    int color = index % 4;
    switch (color) {
        case 0:
            view.backgroundColor = [UIColor blueColor];
            break;
        case 1:
            view.backgroundColor = [UIColor greenColor];
            break;
        case 2:
            view.backgroundColor = [UIColor orangeColor];
            break;
        default:
            view.backgroundColor = [UIColor blackColor];
            break;
    }
    return view;
}


- (NSInteger)numberOfItemsInScrollView:(VReuseScrollView *)scrollView {
    return 10;
}

- (UIEdgeInsets)scrollView:(VReuseScrollView *)scrollView insetForForItemAtIndex:(NSInteger)index {
    return UIEdgeInsetsMake(20, 10, 70, 10);
}



- (VReuseScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[VReuseScrollView alloc] initWithFrame:self.view.bounds];
        _scrollView.reuseDelegate = self;
        _scrollView.pagingEnabled = YES;
        _scrollView.alwaysBounceVertical = NO;   //垂直方向是否反弹
    }
    return _scrollView;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
