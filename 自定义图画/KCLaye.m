//
//  KCLaye.m
//  xiAnimation
//
//  Created by mxbj on 2017/4/11.
//  Copyright © 2017年 Animation. All rights reserved.
//

#import "KCLaye.h"

@implementation KCLaye
-(void)drawInContext:(CGContextRef)ctx{
    NSLog(@"3-drawInContext:");
    NSLog(@"CGContext:%@",ctx);
    //    CGContextRotateCTM(ctx, M_PI_4);
    CGContextSetRGBFillColor(ctx, 135.0/255.0, 232.0/255.0, 84.0/255.0, 1);
    CGContextSetRGBStrokeColor(ctx, 135.0/255.0, 232.0/255.0, 84.0/255.0, 1);
    //    CGContextFillRect(ctx, CGRectMake(0, 0, 100, 100));
    //    CGContextFillEllipseInRect(ctx, CGRectMake(50, 50, 100, 100));
    //开始画线
    CGContextMoveToPoint(ctx, 94.5, 33.5);
    
    //// Star Drawing
    //画直线
//    CGContextAddLineToPoint(ctx,104.02, 47.39);
//    CGContextAddLineToPoint(ctx,120.18, 52.16);
//    CGContextAddLineToPoint(ctx,109.91, 65.51);
    CGContextAddLineToPoint(ctx,110.37, 82.34);
    CGContextAddLineToPoint(ctx,94.5, 76.7);
    CGContextAddLineToPoint(ctx,78.63, 82.34);
    CGContextAddLineToPoint(ctx,79.09, 65.51);
    CGContextAddLineToPoint(ctx,68.82, 52.16);
    CGContextAddLineToPoint(ctx,84.98, 47.39);
    //封闭当前线路
    CGContextClosePath(ctx);
    
    
//    填充指定矩形中的椭圆
//    CGContextDrawPath
//    两个参数决定填充规则，kCGPathFill表示用非零绕数规则，kCGPathEOFill表示用奇偶规则，kCGPathFillStroke表示填充，kCGPathEOFillStroke表示描线，不是填充
    //设置绘制模式
    CGContextDrawPath(ctx, kCGPathEOFillStroke);
}
@end
