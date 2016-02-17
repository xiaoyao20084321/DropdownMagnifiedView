//
//  DropdownView.h
//  daee
//
//  Created by 常超群 on 16/2/17.
//  Copyright © 2016年 常超群. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropdownMagnifiedView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *headerContentView;

- (void)scrollDidScroll:(UIScrollView *)scrollView;
@end
