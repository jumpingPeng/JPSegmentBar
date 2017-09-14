//
//  JPSegmentBarConfig.h
//  ztbestseller
//
//  Created by 贾鹏 on 2017/9/13.
//  Copyright © 2017年 贾鹏. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface JPSegmentBarConfig : NSObject


+ (instancetype)defaultConfig;

/** 背景颜色 */
@property (nonatomic, strong) UIColor *segmentBarBackColor;

@property (nonatomic, strong) UIColor *itemNormalColor;
@property (nonatomic, strong) UIColor *itemSelectColor;
@property (nonatomic, strong) UIFont *itemFont;

@property (nonatomic, strong) UIColor *indicatorColor;

@property (nonatomic, assign) CGFloat indicatorHeight;
@property (nonatomic, assign) CGFloat indicatorExtraW;

@property (nonatomic ,assign) BOOL indicatorIsHidden;
    // 内部实现, 在这个里面写, 外界, 只负责调用
    // 功能, 改变 itemNormalColor 的值
    //
@property (nonatomic, copy, readonly) JPSegmentBarConfig *(^itemBColor)(UIColor *color);//背景颜色
@property (nonatomic, copy, readonly) JPSegmentBarConfig *(^itemNColor)(UIColor *color);//nomalColor
@property (nonatomic, copy, readonly) JPSegmentBarConfig *(^itemSColor)(UIColor *color);//选中颜色
@property (nonatomic, copy, readonly) JPSegmentBarConfig *(^itemF)(UIFont *font);//字体大小

@property (nonatomic, copy, readonly) JPSegmentBarConfig *(^indictColor)(UIColor *color);//显示器颜色
@property (nonatomic, copy, readonly) JPSegmentBarConfig *(^indictHide)(BOOL isHide);//显示器是否显示
@property (nonatomic, copy, readonly) JPSegmentBarConfig *(^indicatorH)(CGFloat H);


    

@end
