//
//  JPSegmentBarConfig.m
//  ztbestseller
//
//  Created by 贾鹏 on 2017/9/13.
//  Copyright © 2017年 贾鹏. All rights reserved.
//


#import "JPSegmentBarConfig.h"


@implementation JPSegmentBarConfig

+ (instancetype)defaultConfig {
    
    JPSegmentBarConfig *config = [[JPSegmentBarConfig alloc] init];
    config.segmentBarBackColor = [UIColor clearColor];
    config.itemFont = [UIFont systemFontOfSize:15];
    config.itemNormalColor = [UIColor lightGrayColor];
    config.itemSelectColor = [UIColor redColor];
    config.indicatorColor = [UIColor redColor];
    config.indicatorHeight = 1;
    config.indicatorExtraW = 10;
    
    return config;
    
}


- (JPSegmentBarConfig *(^)(UIColor *))itemBColor
{
    return ^(UIColor *color) {
        self.segmentBarBackColor = color;
        return self;
};
    
}

//平时颜色
- (JPSegmentBarConfig *(^)(UIColor *))itemNColor
{
    
    return ^(UIColor *color) {
        self.itemNormalColor = color;
        return self;
    };
    
}

//选中颜色
- (JPSegmentBarConfig *(^)(UIColor *))itemSColor
{
    
    return ^(UIColor *color) {
        self.itemSelectColor = color;
        return self;
    };
    
}

//item字体
- (JPSegmentBarConfig *(^)(UIFont *))itemF
{
    
    return ^(UIFont *font) {
        self.itemFont = font;
        return self;
    };
    
}

//指示器高度
- (JPSegmentBarConfig *(^)(CGFloat))indicatorH
{
    return ^(CGFloat H) {
        self.indicatorHeight = H;
        return self;
    };
}

//指示器颜色
- (JPSegmentBarConfig *(^)(UIColor *))indictColor
{
    return ^(UIColor *color) {
        self.indicatorColor = color;
        return self;
    };

}

//指示器是否隐藏
- (JPSegmentBarConfig *(^)(BOOL))indictHide
{
    return ^(BOOL isHidden) {
        self.indicatorIsHidden = isHidden;
        return self;
    };
}


@end
