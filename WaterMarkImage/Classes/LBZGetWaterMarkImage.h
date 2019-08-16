//
//  LBZGetWaterMarkImage.h
//  LBZGetWaterMarkImage
//
//  Created by wintone on 2019/8/15.
//  Copyright © 2019 wintone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface LBZGetWaterMarkImage : NSObject
/**
 根据目标图片制作一个盖水印的图片
 
 @param originalImage 源图片
 @param title 水印文字
 @param markFont 水印文字font(如果不传默认为23)
 @param markColor 水印文字颜色(如果不传递默认为源图片的对比色)
 @return 返回盖水印的图片
 */
- (UIImage *)getWaterMarkImage: (UIImage *)originalImage andTitle: (NSString *)title andMarkFont: (UIFont *)markFont andMarkColor: (UIColor *)markColor;
@end
