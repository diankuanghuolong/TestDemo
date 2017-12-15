//
//  PieView.m
///  PieViewDemo
//
//  Created by Ios_Developer on 2017/12/8.
//  Copyright © 2017年 hai. All rights reserved.
//

#import "PieView.h"

#define PI 3.14159265358979323846
@implementation PieView

//计算度转弧度
static inline float radians(double degrees) {
    return degrees * PI / 180;
}
static inline void drawArc(CGContextRef ctx, CGPoint point, float angle_start, float angle_end, UIColor* color,float radius) {
    CGContextMoveToPoint(ctx, point.x, point.y);
    CGContextSetFillColor(ctx, CGColorGetComponents( [color CGColor]));
    CGContextAddArc(ctx, point.x, point.y, radius,  angle_start, angle_end, 0);
    //CGContextClosePath(ctx);
    CGContextFillPath(ctx);//实心的
//    CGContextStrokePath(ctx);//空心的
}
-(void)drawRect:(CGRect)rect
{
//    CGPoint cent = CGPointMake((self.frame.size.width/2) - self.radius/2, (self.frame.size.height/2)-self.radius/2);
    CGPoint cent = CGPointMake(self.frame.size.width/2, self.frame.size.width/2);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextClearRect(ctx, rect);
    
    //
    float angle_start = 0.0;
    float angle_end = 0.0;
    for (int i = 0; i < _radiansArr.count; i ++)
    {
        angle_end = radians([_radiansArr[i] floatValue]);
        drawArc(ctx, cent, angle_start, angle_end, _colorArr[i],self.radius);
        
        angle_start = angle_end;
    }
}
-(void)setRadius:(float)radius
{
    _radius=radius;
    [self setNeedsDisplay];
}
//    //画折线
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGPoint aPoints[2];//坐标点
//    aPoints[0] =CGPointMake(100, 80);//坐标1
//    aPoints[1] =CGPointMake(130, 80);//坐标2
//    CGContextAddLines(context, aPoints, 2);//添加线
//    CGContextDrawPath(context, kCGPathStroke); //根据坐标绘制路径
@end
