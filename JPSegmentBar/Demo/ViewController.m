//
//  ViewController.m
//  ztbestseller
//
//  Created by 贾鹏 on 2017/9/13.
//  Copyright © 2017年 贾鹏. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h"
#import "ViewController6.h"
#import "ViewController7.h"
#import "ViewController8.h"
#import "ViewController9.h"
#import "ViewController10.h"
#import "ViewController11.h"

#import "JPSementBarVC.h"



/********************普通情形************************/




@interface ViewController ()

@property (nonatomic, strong) JPSementBarVC *segmentBarVC;

@end

@implementation ViewController


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
    
    
    NSArray *items = @[@"标签1", @"标签2", @"标签3",@"标签4", @"标签5", @"标签6",@"标签7", @"标签8", @"标签9",@"标签10", @"标签11"];
    
    // 添加几个自控制器
    // 在contentView, 展示子控制器的视图内容
    
    ViewController1 *vc1 = [ViewController1 new];
    ViewController2 *vc2 = [ViewController2 new];
    ViewController3 *vc3 = [ViewController3 new];
    ViewController4 *vc4 = [ViewController4 new];
    ViewController5 *vc5 = [ViewController5 new];
    ViewController6 *vc6 = [ViewController6 new];
    ViewController7 *vc7 = [ViewController7 new];
    ViewController8 *vc8 = [ViewController8 new];
    ViewController9 *vc9 = [ViewController9 new];
    ViewController10 *vc10 = [ViewController10 new];
    ViewController11 *vc11 = [ViewController11 new];
   // ViewController1 *vc12 = [ViewController12 new];
    
    [self.segmentBarVC setUpWithItems:items childVCs:@[vc1, vc2, vc3,vc4,vc5, vc6, vc7,vc8,vc9, vc10, vc11]];
    
    [self.segmentBarVC.segmentBar updateWithConfig:^(JPSegmentBarConfig *config) {
        config.itemNColor([UIColor blueColor]).itemSColor([UIColor redColor]).itemF([UIFont systemFontOfSize:20]).itemBColor([UIColor yellowColor]).indictHide(NO).indicatorH(5);
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
