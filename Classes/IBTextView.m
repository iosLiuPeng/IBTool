//
//  IBTextView.m
//  SuperVPN
//
//  Created by 刘鹏i on 2019/4/22.
//  Copyright © 2019 wuhan.musjoy. All rights reserved.
//

#import "IBTextView.h"
#import HEADER_LOCALIZE

@interface IBTextView ()
@property (nonatomic, assign) BOOL fromNib;
@end

@implementation IBTextView
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
    
    if (_fromNib && locText.length) {
        self.text = locString(locText);
    }
}

@end
