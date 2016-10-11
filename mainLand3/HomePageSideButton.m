//
//  HomePageSideButton.m
//  mainLand3
//
//  Created by 朱志先 on 16/6/15.
//  Copyright © 2016年 朱志先. All rights reserved.
//

#import "HomePageSideButton.h"

@interface HomePageSideButton ()
@property (nonatomic, strong) UIImageView * titleimageView;
@property (nonatomic,strong) UILabel *lable;

@end

@implementation HomePageSideButton

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (void)setLableText:(NSString *)lableText
{
    _lableText = lableText;
    if (self.lable) {
        self.lable.text = lableText;
    }
}


- (void)setTitleImage:(UIImage *)titleImage
{
    _titleImage = titleImage;
    if (self.titleimageView) {
        self.titleimageView.image = titleImage;
    }
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleimageView = [UIImageView new];
        self.lable = [UILabel new];
        self.lable.textAlignment = NSTextAlignmentCenter;
        self.lable.textColor = [UIColor whiteColor];
        [self addSubview:self.lable];
        [self addSubview:self.titleimageView];
        [self addTarget:self action:@selector(clickButton) forControlEvents:(UIControlEventTouchUpInside)];
        
        
    }
    return self;
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    if (!self.titleimageView) {
        return;
    }
    if (CGRectGetHeight(frame) > CGRectGetWidth(frame))
    {
        self.titleimageView.frame = CGRectMake(0, 0, CGRectGetWidth(frame), CGRectGetWidth(frame));
        self.lable.frame = CGRectMake(0, CGRectGetWidth(frame), CGRectGetWidth(frame),(CGRectGetHeight(frame)-CGRectGetWidth(frame)));
        if (!_font) {
                    self.lable.font = [UIFont systemFontOfSize:(CGRectGetHeight(frame)-CGRectGetWidth(frame)) * 0.7 weight:4];
        }

    }
    else
    {
        NSInteger i = 3;
        if (self.inset != 0) {
            i = self.inset;
        }
        self.titleimageView.frame = CGRectMake(0, 0, CGRectGetHeight(frame), CGRectGetHeight(frame));
        self.lable.frame = CGRectMake(CGRectGetHeight(frame) + i, 0, CGRectGetWidth(frame) - CGRectGetHeight(frame) - i, CGRectGetHeight(frame));
        self.lable.textAlignment = NSTextAlignmentLeft;
        if (!_font) {
            self.lable.font = [UIFont systemFontOfSize:CGRectGetHeight(frame)*0.8  weight:0.7];
        }
        

    }
    
}

- (void)setInset:(NSInteger)inset
{
    if (CGRectGetWidth(self.frame) > CGRectGetHeight(self.frame)) {
        self.lable.frame = CGRectMake(CGRectGetHeight(self.frame) + inset, 0, CGRectGetWidth(self.frame) - CGRectGetHeight(self.frame) - inset, CGRectGetHeight(self.frame));
    }
}

- (void)setTextColor:(UIColor *)textColor
{
    _textColor = textColor;
    self.lable.textColor = textColor;
}

- (void)setFont:(UIFont *)font
{
    _font = font;
    self.lable.font = font;
}

- (void)clickButton
{
    !_clickBlock?:_clickBlock(self);
}





@end
