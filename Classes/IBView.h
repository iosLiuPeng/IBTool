//
//  IBView.h
//  SuperVPN
//
//  Created by 刘鹏i on 2019/4/22.
//  Copyright © 2019 wuhan.musjoy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface IBView : UIView
/* 圆角（优先级:上->下 => 低->高） */
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;   ///< 圆角度数
@property (nonatomic, assign) IBInspectable CGFloat cornerRatio;    ///< 圆角系数（占高度比例）
@property (nonatomic, assign) IBInspectable BOOL hSemicircle;       ///< 高半圆
@property (nonatomic, assign) IBInspectable BOOL wSemicircle;       ///< 宽半圆

/* 边框 */
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;    ///< 边框宽度
@property (nonatomic, strong) IBInspectable UIColor *borderColor;   ///< 边框颜色

/* 阴影 */
@property (nonatomic, strong) IBInspectable UIColor *shadowColor;   ///< 阴影颜色
@property (nonatomic, assign) IBInspectable CGSize shadowOffset;    ///< 阴影偏移量
@property (nonatomic, assign) IBInspectable CGFloat shadowRadius;   ///< 阴影半径
@property (nonatomic, assign) IBInspectable CGFloat shadowOpacity;  ///< 阴影透明度

@end

NS_ASSUME_NONNULL_END
