//
//  HomePageMyIsland.m
//  mainLand3
//
//  Created by 朱志先 on 16/6/15.
//  Copyright © 2016年 朱志先. All rights reserved.
//

#import "HomePageMyIslandView.h"
#import "HomePageSideButton.h"

@interface HomePageMyIslandView ()
@property (nonatomic, strong) UIImageView *avatarImageView;
@property (nonatomic, strong) UILabel *nickNameLable;
@property (nonatomic, strong) HomePageSideButton *coinButton;
@property (nonatomic, strong) HomePageSideButton *rankButton;
@property (nonatomic, strong) UIButton *signUpButton;
@property (nonatomic, strong) UIButton *messageButton;
@property (nonatomic, strong) UIImageView *LevelImage;

@property (nonatomic, strong) UIImageView *backgroundImage;



@end

@implementation HomePageMyIslandView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.avatarImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Avatar"]];
        
        self.nickNameLable = [UILabel new];
        self.nickNameLable.numberOfLines = 2;
        self.nickNameLable.font = [UIFont systemFontOfSize:14];
        self.nickNameLable.text = @"Hello:\n我是闯堂兔";
        
        self.coinButton = [HomePageSideButton new];
        self.coinButton.lableText = @"0";
        self.coinButton.font = [UIFont systemFontOfSize:20];
        self.coinButton.titleImage = [UIImage imageNamed:@"coin"];
        self.coinButton.textColor = [UIColor blackColor];
        
        self.rankButton = [HomePageSideButton new];
        self.rankButton.lableText = @"0";
        self.rankButton.font = [UIFont systemFontOfSize:20];
        self.rankButton.textColor = [UIColor blackColor];
        self.rankButton.titleImage = [UIImage imageNamed:@"rank"];
        
        self.signUpButton = [UIButton new];
        [self.signUpButton setImage:[UIImage imageNamed:@"signUp"] forState:(UIControlStateNormal)];
        [self.signUpButton addTarget:self action:@selector(clickSignUp) forControlEvents:(UIControlEventTouchUpInside)];
        
        self.messageButton = [UIButton new];
        [self.messageButton setBackgroundImage:[UIImage imageNamed:@"message"] forState:(UIControlStateNormal)];
        [self.messageButton addTarget:self action:@selector(clickMessageButton) forControlEvents:(UIControlEventTouchUpInside)];
        self.LevelImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"level"]];
        self.backgroundImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"myland"]];
        
        [self addSubview:self.backgroundImage];
        [self addSubview:self.nickNameLable];
        [self addSubview:self.avatarImageView];
        [self addSubview:self.coinButton];
        [self addSubview:self.rankButton];
        [self addSubview:self.signUpButton];
        [self addSubview:self.messageButton];
        [self addSubview:self.LevelImage];
        
        
    }
    
    return self;
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    if (!self.avatarImageView) {
        return;
    }
    CGFloat width = CGRectGetWidth(frame);
    CGFloat height = CGRectGetHeight(frame);
    self.avatarImageView.frame = CGRectMake(width * 0.05, height * 0.22, width * 0.38, width * 0.38);
    self.backgroundImage.frame = CGRectMake(0, 0, width, height);
    self.nickNameLable.frame = CGRectMake(width * 0.05, height * 0.75, width * 0.32 , height * 0.19);
    self.LevelImage.frame = CGRectMake(width * 0.37, height * 0.75, width * 0.115, width * 0.13);
    self.coinButton.frame = CGRectMake(width * 0.52, 0.22 * height, width * 0.43, height * 0.14);
    self.rankButton.frame = CGRectMake(width * 0.52, 0.39 * height, width * 0.43, height * 0.14);
    self.signUpButton.frame = CGRectMake(width * 0.52, 0.56 * height, width * 0.43, height * 0.16);
    self.messageButton.frame = CGRectMake(width * 0.52, 0.75 * height, width * 0.43, height * 0.16);

}

- (void)clickSignUp
{
    !_signUpButtonBlock?:_signUpButtonBlock();
}

- (void)clickMessageButton
{
    !_messageButtonBlock?:_messageButtonBlock();
}

-(void)setNickName:(NSString *)nickName
{
    _nickName = nickName;
    self.nickNameLable.text = nickName;
}


- (void)setLevel:(NSInteger)level
{
    _level = level;
    
}

- (void)setCoinNumber:(NSInteger)coinNumber
{
    _coinNumber = coinNumber;
    self.coinButton.lableText = [NSString stringWithFormat:@"%ld",(long)coinNumber];
    
}

- (void)setMessageNumber:(NSInteger)messageNumber
{
    _messageNumber = messageNumber;
}

- (void)setRank:(NSInteger)rank
{
    _rank = rank;
    self.rankButton.lableText = [NSString stringWithFormat:@"%ld",(long)rank];
}

- (void)setAvatarImage:(UIImage *)avatarImage{
    if (!_avatarImage) {
        return;
    }
    _avatarImage = avatarImage;
    self.avatarImageView.image = avatarImage;
}

- (void)setNickNameFont:(UIFont *)nickNameFont
{
    _nickNameFont = nickNameFont;
    self.nickNameLable.font = nickNameFont;
}

- (void)setCoinAndRankLableFont:(UIFont *)coinAndRankLableFont
{
    _coinAndRankLableFont = coinAndRankLableFont;
    self.coinButton.font = coinAndRankLableFont;
    self.rankButton.font = coinAndRankLableFont;
}

@end
