//
//  nextViewController2.m
//  JPSegmentBar
//
//  Created by 贾鹏 on 2017/9/14.
//  Copyright © 2017年 贾鹏. All rights reserved.
//

#import "nextViewController2.h"
#import "JPSementBarVC.h"
#import "UIView+Layout.h"

/***********************少量标签 标签宽度需要均分的情形*********************/



@interface nextViewController2 ()
@property (nonatomic, strong) JPSementBarVC *segmentBarVC;
@end

@implementation nextViewController2

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
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.segmentBarVC.segmentBar.frame = CGRectMake(0, 0, self.view.frame.size.width, 50);
    self.segmentBarVC.view.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64);
    [self.view addSubview:self.segmentBarVC.view];
    
    
    //添加控制器
    NSArray *items = @[@"标签1", @"标签2"];
    
    //    NSArray *items = @[@"标签1"];
    // 添加几个自控制器
    // 在contentView, 展示子控制器的视图内容
    UIViewController *vc1 = [UIViewController new];
    UIViewController *vc2 = [UIViewController new];
    
    [self.segmentBarVC setUpWithItems:items childVCs:@[vc1, vc2]];
    
    //[self.segmentBarVC setUpWithItems:items childVCs:@[vc1]];
    
    
    
    //设置样式
    [self.segmentBarVC.segmentBar updateWithConfig:^(JPSegmentBarConfig *config) {
        config.itemNColor([UIColor blueColor]).itemSColor([UIColor redColor]).itemF([UIFont systemFontOfSize:20]).itemBColor([UIColor yellowColor]).indicatorH(2);
        config.indicatorExtraW = 0;
    }];
    
    //少量标签需要均分的情形
    self.segmentBarVC.segmentBar.isDivideEqually = YES;
    
//    UIView *LineView = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 1, 30)];
//    
//    LineView.centerX = self.segmentBarVC.segmentBar.centerX;
//    
//    LineView.backgroundColor = [UIColor blueColor];
//    
//    [self.segmentBarVC.segmentBar addSubview:LineView];
    
    
    
}


@end
