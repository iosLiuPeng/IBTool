//
//  IBTextView.h
//  SuperVPN
//
//  Created by 刘鹏i on 2019/4/22.
//  Copyright © 2019 wuhan.musjoy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

IB_DESIGNABLE
@interface IBTextView : UITextView
@property (nonatomic, copy) IBInspectable NSString *locText;    ///< 国际化文案
@end

NS_ASSUME_NONNULL_END
