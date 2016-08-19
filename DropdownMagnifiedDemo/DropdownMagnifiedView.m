//
//  DropdownView.m
//  daee
//
//  Created by 常超群 on 16/2/17.
//  Copyright © 2016年 常超群. All rights reserved.
//

#import "DropdownMagnifiedView.h"

@interface DropdownMagnifiedView ()
///高度
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerContentViewHeight;
///上边的距离
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerContentViewTop;
///左边的距离
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerContentViewLeft;
///右边的距离
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerContentViewRight;
///固定高度
@property (assign, nonatomic) CGFloat headerHeight;
@end

@implementation DropdownMagnifiedView
- (void)awakeFromNib {
    self.headerHeight = 250;
    self.autoresizingMask = UIViewAutoresizingNone;
}
- (void)scrollDidScroll:(UIScrollView *)scrollView {
    CGFloat offset_Y = scrollView.contentOffset.y;
    if (offset_Y < 0) {
        self.headerContentViewTop.constant = offset_Y;
        self.headerContentViewLeft.constant = offset_Y / 2;
        self.headerContentViewRight.constant = offset_Y / 2;
        self.headerContentViewHeight.constant = self.headerHeight+(-offset_Y);
    }
    [self layoutIfNeeded];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
