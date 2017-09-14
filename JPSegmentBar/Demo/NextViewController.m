//
//  NextViewController.m
//  JPSegmentBar
//
//  Created by 贾鹏 on 2017/9/14.
//  Copyright © 2017年 贾鹏. All rights reserved.
//

#import "NextViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"


#import "JPSementBarVC.h"



/*********************可放在navigation上的情形***********************/


@interface NextViewController ()

@property (nonatomic, strong) JPSementBarVC *segmentBarVC;

@end

@implementation NextViewController


- (JPSementBarVC *)segmentBarVC {
    if (!_segmentBarVC) {
        JPSementBarVC *vc = [[JPSementBarVC alloc] init];
        [self addChildViewController:vc];
        _segmentBarVC = vc;
    }
    return _segmentBarVC;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置frame
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.segmentBarVC.segmentBar.frame = CGRectMake(0, 0, self.view.frame.size.width - 150, 44);
    
    self.segmentBarVC.view.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64);
    [self.view addSubview:self.segmentBarVC.view];
    
    self.navigationItem.titleView = self.segmentBarVC.segmentBar;
    
    //添加控制器
    NSArray *items = @[@"标签1", @"标签2"];
    // 添加几个自控制器
    // 在contentView, 展示子控制器的视图内容
    ViewController1 *vc1 = [ViewController1 new];
    ViewController2 *vc2 = [ViewController2 new];
   
    
    [self.segmentBarVC setUpWithItems:items childVCs:@[vc1, vc2]];
    
    //设置样式
    [self.segmentBarVC.segmentBar updateWithConfig:^(JPSegmentBarConfig *config) {
        config.itemNColor([UIColor blueColor]).itemSColor([UIColor redColor]).itemF([UIFont systemFontOfSize:20]).itemBColor([UIColor yellowColor]).indicatorH(2);
        
    }];
}
@end
