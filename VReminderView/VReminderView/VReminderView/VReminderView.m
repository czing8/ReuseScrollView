//
//  VReminderView.m
//  VReminderView
//
//  Created by Vols on 15/4/14.
//  Copyright (c) 2015年 Vols. All rights reserved.
//

#import "VReminderView.h"

#define kSCREEN_SIZE        [UIScreen mainScreen].bounds.size


@interface VReminderView()

@property (nonatomic, strong) UIImageView * bgImgView;
@property (nonatomic, strong) UILabel * label;

@end

@implementation VReminderView

- (id)init{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, kSCREEN_SIZE.width, 35);
        self.backgroundColor = [UIColor clearColor];
        
        [self addSubview:self.bgImgView];
        [self addSubview:self.label];
    }
    return self;
}

- (void)setText:(NSString *)text{
    _text = text;
    
    _label.text = text;
    
    [_label sizeToFit];
    
    CGSize size = _label.frame.size;
    CGRect frame =  _bgImgView.frame;
    frame.size.width = size.width + 40;
    self.bgImgView.frame = frame;
    _bgImgView.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
    _label.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
}

- (UIImageView *)bgImgView{
    if (!_bgImgView) {
        _bgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 35)];
        _bgImgView.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
        
        UIImage *image = [UIImage imageNamed:@"reminder_BgView"];
        
        UIEdgeInsets insets = UIEdgeInsetsMake(25, 25, 10, 10);

        image = [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
        _bgImgView.image = image;
    }
    return _bgImgView;
}


- (UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 35)];
        _label.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
        _label.textAlignment = NSTextAlignmentCenter;
        _label.textColor = [UIColor whiteColor];
        _label.font = [UIFont systemFontOfSize:18];
        
    }
    return _label;
}

@end
