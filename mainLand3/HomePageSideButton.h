//
//  HomePageSideButton.h
//  mainLand3
//
//  Created by 朱志先 on 16/6/15.
//  Copyright © 2016年 朱志先. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomePageSideButton : UIButton
@property (nonatomic, strong) NSString *lableText;
@property (nonatomic, strong) UIImage *titleImage;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, assign) NSInteger inset;
@property (nonatomic, strong) UIFont *font;
@property (nonatomic, copy) void(^clickBlock)(HomePageSideButton *button);
@end
