//
//  ZGEdgeInsetsLabel.m
//  ZGEdgeInsetsLabel
//
//  Created by offcn_zcz32036 on 2017/12/12.
//  Copyright © 2017年 cn. All rights reserved.
//

#import "ZGEdgeInsetsLabel.h"

@implementation ZGEdgeInsetsLabel

-(void)setContentInset:(UIEdgeInsets)contentInset
{
    _contentInset=contentInset;
    NSString *tempString=self.text;
    self.text=@"";
    self.text=tempString;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:UIEdgeInsetsInsetRect(rect, self.contentInset)];
}


@end
