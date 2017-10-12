//
//  UIAlertController.m
//  UIAlertController
//
//  Created by Wayne Yeh on 2017/10/12.
//  Copyright © 2017年 Wayne Yeh. All rights reserved.
//

#import "UIAlertController.h"

@interface  UIAlertAction (_titleTextColor)
- (void)_setTitleTextColor:(UIColor *)titleTextColor;
- (UIColor *)_titleTextColor;
@end

@implementation UIAlertAction (titleTextColor)

- (void)setTitleTextColor:(UIColor *)titleTextColor {
    [self _setTitleTextColor:titleTextColor];
}

- (UIColor *)titleTextColor {
    return self._titleTextColor;
}

@end
