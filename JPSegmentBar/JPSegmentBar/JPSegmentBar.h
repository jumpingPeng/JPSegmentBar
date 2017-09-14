//
//  JPSegmentBar.h
//  ztbestseller
//
//  Created by 贾鹏 on 2017/9/13.
//  Copyright © 2017年 贾鹏. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "JPSegmentBarConfig.h"

@class JPSegmentBar;
@protocol JPSegmentBarDelegate <NSObject>

/**
 代理方法, 告诉外界, 内部的点击数据

 @param segmentBar segmentBar
 @param toIndex    选中的索引(从0开始)
 @param fromIndex  上一个索引
 */
- (void)segmentBar: (JPSegmentBar *)segmentBar didSelectIndex: (NSInteger)toIndex fromIndex: (NSInteger)fromIndex;

@end


@interface JPSegmentBar : UIView
/**
 快速创建一个选项卡控件

 @param frame frame

 @return 选项卡控件
 */
+ (instancetype)segmentBarWithFrame: (CGRect)frame;
/** 代理 */
@property (nonatomic, weak) id<JPSegmentBarDelegate> delegate;
/** 数据源 */
@property (nonatomic, strong) NSArray <NSString *>*items;
/** 当前选中的索引, 双向设置 */
@property (nonatomic, assign) NSInteger selectIndex;

//样式颜色更新
- (void)updateWithConfig: (void(^)(JPSegmentBarConfig *config))configBlock;


/** 标签是否平分 */
@property (nonatomic,assign) BOOL isDivideEqually;

@end
