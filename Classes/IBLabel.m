//
//  IBLabel.m
//  SuperVPN
//
//  Created by 刘鹏i on 2019/4/22.
//  Copyright © 2019 wuhan.musjoy. All rights reserved.
//

#import "IBLabel.h"
#import HEADER_LOCALIZE

@interface IBLabel ()
@property (nonatomic, assign) BOOL fromNib;
@end

@implementation IBLabel
#pragma mark - Life cycle
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    _fromNib = YES;
    self.locText = self.locText;
}

#pragma mark - Set
/// 国际化文案
- (void)setLocText:(NSString *)locText
{
    _locText = locText;
    
    if (_fromNib) {
        self.text = locString(locText);
    }
}

/*
 这里遇到预览时的一个问题：
 有下面三个方法中都会修改self.text
 1.-setText:    对应xib面板中的text，如果值改变会执行这个方法
 2.-setLocsText:    对应xib面板中的locText，如果值改变会执行这个方法
 3.-prepareForInterfaceBuilder 对应xib预览时，走完所有的初始化操作后，会执行这个方法
 
 我发现，当预览时，这个三个方法如果都修改了self.text，则最终只有一个方法有用，其他两个在xib上进行修改操作时不会执行
 规律：初始化后最后一个执行的方法，在预览时有用，其他两个不执行
 
 实践：
 1.如果有“prepareForInterfaceBuilder”方法，因为它肯定是最后执行，所以只会走这个方法
 2.如果没有预览方法，初始化时“text”和“locText”都值，那么只有“locText”会执行，应为他初始化操作在“text”之后执行
 3.如果没有预览方法，初始化时“text”和“locText”其中一个有值，那么有值的那个方法会执行，另一个不执行
 
 解决方案：
 在预览时，不执行setLocsText中的方法，那么只有setText有效
 在实际运行时，因为这个控件专门给xib、sb用的，所以通过awakeFromNib方法，开启setLocsText方法，并重新赋值（因为awakeFromNib最后执行）
 */

@end
