//
//  IBButton.h
//  SuperVPN
//
//  Created by 刘鹏i on 2019/4/22.
//  Copyright © 2019 wuhan.musjoy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface IBButton : UIButton
/* -----------  UIView  ----------- */
/* 圆角（优先级:上->下 => 低->高） */
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;   ///< 圆角度数
@property (nonatomic, assign) IBInspectable CGFloat cornerRatio;    ///< 圆角系数（占高度比例）
@property (nonatomic, assign) IBInspectable BOOL hSemicircle;       ///< 高半圆
@property (nonatomic, assign) IBInspectable BOOL wSemicircle;       ///< 宽半圆

/* 边框 */
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;    ///< 边框宽度
@property (nonatomic, strong) IBInspectable UIColor *borderColor;   ///< 边框颜色

/* -----------  Text  ----------- */
@property (nonatomic, copy) IBInspectable NSString *locText;        ///< 国际化文案

/* -----------  UIButton  ----------- */
@property (nonatomic, assign) IBInspectable BOOL adjustsFontSize;   ///< 字体大小自适应


@end

NS_ASSUME_NONNULL_END
