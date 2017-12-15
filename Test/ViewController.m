//
//  ViewController.m
//  Test
//
//  Created by Ios_Developer on 2017/12/15.
//  Copyright © 2017年 hai. All rights reserved.
//

#import "ViewController.h"
#import <FrameworkTest/FrameworkTest.h>

/*
 16进制颜色转换
 */
#define UIColorFromHex(s)  [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0 green:(((s &0xFF00) >>8))/255.0 blue:((s & 0xFF))/255.0 alpha:1.0]
/*
 屏幕宽高
 */
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"扇形图／扇形统计图";
    
    /*
     本demo中 统计图MYHCircleManageView借鉴其他作者，可以在 MYHCircleManageView.h 中看到作者消息;
     
     杜绝侵权
     为开源做贡献
     */
    
    //扇形图
    [self loadPieView];
    
    //统计图
    [self loadCircleView];
}

#pragma mark  ===== loadSubViews  =====
-(void)loadCircleView
{
    //统计图
    MYHCircleManageView * circleView = [[MYHCircleManageView alloc] initWithFrame:CGRectMake(10, 100, SCREEN_WIDTH, 200)];
    //%10唯有 %20工作 %20能使我 %20快乐 %20发自 %10肺腑
    UIColor *color1 = UIColorFromHex(0x49dc62);
    UIColor *color2 = UIColorFromHex(0xffb800);
    UIColor *color3 = UIColorFromHex(0xfa7f46);
    UIColor *color4 = UIColorFromHex(0xffb800);
    UIColor *color5 = UIColorFromHex(0x2ac7f5);
    UIColor *color6 = UIColorFromHex(0xff7e02);
    [circleView loadDataArray:@[@{@"number":@"0.1",@"color":color1,@"name":@"唯有:"},
                                @{@"number":@"0.2",@"color":color2,@"name":@"工作:"},
                                @{@"number":@"0.2",@"color":color3,@"name":@"能使我:"},
                                @{@"number":@"0.2",@"color":color4,@"name":@"快乐:"},
                                @{@"number":@"0.2",@"color":color5,@"name":@"发自:"},@{@"number":@"0.1",@"color":color6,@"name":@"肺腑:"}] withType:MYHCircleManageViewTypeArc];
    [self.view addSubview:circleView];
}
-(void)loadPieView
{
    PieView *piView = [[PieView alloc] initWithFrame:CGRectMake(10, 320, 50, 50)];
    piView.radius = 50;
    piView.layer.cornerRadius = piView.radius/2;
    piView.layer.masksToBounds = YES;
    piView.radiansArr = @[@(45),@(45 + 90),@(45 + 90 + 255)];//起始位置为3点钟方向 数字弧度和不能大于360 绿色部分为默认部分
    piView.colorArr = @[[UIColor blueColor],[UIColor redColor],[UIColor greenColor]];
    [self.view addSubview:piView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
