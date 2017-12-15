//
//  PieView.h
//  PieViewDemo
//
//  Created by Ios_Developer on 2017/12/8.
//  Copyright © 2017年 hai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PieView : UIView
//直径
@property(nonatomic,assign)float radius;
//弧度
@property(nonatomic,strong)NSArray *radiansArr;
//颜色
@property(nonatomic,strong)NSArray *colorArr;
@end
