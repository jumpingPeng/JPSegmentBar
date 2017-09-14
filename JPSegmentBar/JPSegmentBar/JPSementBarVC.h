//
//  JPSementBarVC.h
//  ztbestseller
//
//  Created by 贾鹏 on 2017/9/13.
//  Copyright © 2017年 贾鹏. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "JPSegmentBar.h"
@interface JPSementBarVC : UIViewController

@property (nonatomic, strong) JPSegmentBar *segmentBar;


@property (nonatomic ,assign) BOOL *segmentIndicatorViewIsHidden;

- (void)setUpWithItems: (NSArray <NSString *>*)items childVCs: (NSArray <UIViewController *>*)childVCs;


@end
