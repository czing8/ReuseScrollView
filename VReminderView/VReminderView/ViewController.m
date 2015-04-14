//
//  ViewController.m
//  VReminderView
//
//  Created by Vols on 15/4/14.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "ViewController.h"
#import "VReminderView.h"

@interface ViewController ()

@property (nonatomic, strong) VReminderView * reminderView;
@property (nonatomic, strong) NSArray * noteArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.reminderView];
    _reminderView.hidden = YES;

    _noteArray = @[@"welcome", @"this is a test", @"this is a testthis is a test"];
}


- (VReminderView *)reminderView{
    if (!_reminderView) {
        _reminderView = [[VReminderView alloc] init];
        _reminderView.center = self.view.center;
    }
    return _reminderView;
}


- (IBAction)clickAction:(id)sender {
    _reminderView.text = _noteArray[arc4random()%3];
    _reminderView.hidden = NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
