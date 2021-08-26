//
//  UIView+AppExtension.m
//  ProjectBasicsKit
//
//  Created by tg on 2021/7/28.
//

#import "UIView+AppExtension.h"

@implementation UIView (AppExtension)

- (void)setApp_x:(CGFloat)app_x {
    
    CGRect frame = self.frame;
    frame.origin.x = app_x;
    self.frame = frame;
}

- (CGFloat)app_x {
    
    return self.frame.origin.x;
}

- (void)setApp_y:(CGFloat)app_y {
    
    CGRect frame = self.frame;
    frame.origin.y = app_y;
    self.frame = frame;
}

- (CGFloat)app_y {
    
    return self.frame.origin.y;
}

- (void)setApp_w:(CGFloat)app_w {
    
    CGRect frame = self.frame;
    frame.size.width = app_w;
    self.frame = frame;
}

- (CGFloat)app_w {
    
    return self.frame.size.width;
}

- (void)setApp_h:(CGFloat)app_h {
    
    CGRect frame = self.frame;
    frame.size.height = app_h;
    self.frame = frame;
}

- (CGFloat)app_h {
    
    return self.frame.size.height;
}

- (void)setApp_centerX:(CGFloat)app_centerX {
    
    CGPoint center = self.center;
    center.x = app_centerX;
    self.center = center;
}

- (CGFloat)app_centerX {
    
    return self.center.x;
}

- (void)setApp_centerY:(CGFloat)app_centerY {
    
    CGPoint center = self.center;
    center.y = app_centerY;
    self.center = center;
}

- (CGFloat)app_centerY {
    
    return self.center.y;
}

- (void)setApp_size:(CGSize)app_size {
    
    CGRect frame = self.frame;
    frame.size = app_size;
    self.frame = frame;
}

- (CGSize)app_size {
    
    return self.frame.size;
}

- (void)setApp_origin:(CGPoint)app_origin {
    
    CGRect frame = self.frame;
    frame.origin = app_origin;
    self.frame = frame;
}

- (CGPoint)app_origin {
    
    return self.frame.origin;
}

/**
 圆角
 使用自动布局，需要在layoutsubviews 中使用
 @param radius 圆角尺寸
 @param corner 圆角位置
 */
- (void)app_radiusWithRadius:(CGFloat)radius corner:(UIRectCorner)corner {
#ifdef __IPHONE_11_0
    if (@available(iOS 11.0, *)) {
        self.layer.cornerRadius = radius;
        self.layer.maskedCorners = (CACornerMask)corner;
#else
    if ((NO)) {
#endif
    } else {
        UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(radius, radius)];
        CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
        maskLayer.frame = self.bounds;
        maskLayer.path = path.CGPath;
        self.layer.mask = maskLayer;
    }
}

@end
