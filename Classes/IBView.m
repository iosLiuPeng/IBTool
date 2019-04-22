//
//  IBView.m
//  SuperVPN
//
//  Created by 刘鹏i on 2019/4/22.
//  Copyright © 2019 wuhan.musjoy. All rights reserved.
//

#import "IBView.h"

@implementation IBView
#pragma mark - Set
/// 圆角度数
- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = cornerRadius;
}

/// 边框宽度
- (void)setBorderWidth:(CGFloat)borderWidth
{
    _borderWidth = borderWidth;
    self.layer.borderWidth = borderWidth;
}

/// 边框颜色
- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    self.layer.borderColor = borderColor.CGColor;
}

#pragma mark - Overwrite
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 圆角系数
    if (_cornerRatio > 0) {
        self.layer.cornerRadius = self.bounds.size.height * _cornerRatio;
    }
    
    // 高半圆
    if (_hSemicircle == YES) {
        self.layer.cornerRadius = self.bounds.size.height / 2.0;
    }
    
    // 宽半圆
    if (_wSemicircle == YES) {
        self.layer.cornerRadius = self.bounds.size.width / 2.0;
    }
}

@end
