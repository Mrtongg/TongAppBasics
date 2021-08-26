//
//  UIView+AppExtension.h
//  ProjectBasicsKit
//
//  Created by tg on 2021/7/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (AppExtension)
@property (assign, nonatomic) CGFloat app_x;
@property (assign, nonatomic) CGFloat app_y;
@property (assign, nonatomic) CGFloat app_w;
@property (assign, nonatomic) CGFloat app_h;
@property (assign, nonatomic) CGFloat app_centerX;
@property (assign, nonatomic) CGFloat app_centerY;
@property (assign, nonatomic) CGSize  app_size;
@property (assign, nonatomic) CGPoint app_origin;

/**
 圆角
 使用自动布局，需要在layoutsubviews 中使用
 @param radius 圆角尺寸
 @param corner 圆角位置
 */
- (void)app_radiusWithRadius:(CGFloat)radius corner:(UIRectCorner)corner;
@end

NS_ASSUME_NONNULL_END
