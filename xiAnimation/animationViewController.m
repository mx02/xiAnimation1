//
//  animationViewController.m
//  xiAnimation
//
//  Created by mxbj on 2017/4/10.
//  Copyright © 2017年 Animation. All rights reserved.
//

#import "animationViewController.h"
#define Screen_height   [[UIScreen mainScreen] bounds].size.height
#define Screen_width    [[UIScreen mainScreen] bounds].size.width
#define WIDTH 150
#define PHOTO_HEIGHT 150

@interface animationViewController ()<CALayerDelegate>

@end

@implementation animationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self star];
    
}
- (void)star{
//    //获得跟图层
//    CALayer *layer = [[CALayer alloc] init];
//    //设置跟图层的颜色
//    layer.backgroundColor = [UIColor orangeColor].CGColor;
//    //设置跟图层的中心点
//    layer.position = CGPointMake(Screen_width / 2, Screen_height / 2);
//    //设置跟图层的大小
//    layer.bounds = CGRectMake(0, 0, WIDTH, WIDTH);
//    //设置圆角,当圆角半径等于矩形的一半时看起来就是一个圆形
//    layer.cornerRadius = WIDTH/2;
//    //如果想要正确显示则必须设置masksToBounds=YES，剪切子图层
//    layer.masksToBounds=YES;
//    //设置边框
//    layer.borderColor=[UIColor whiteColor].CGColor;
//    layer.borderWidth=2;
//    //设置阴影
//    layer.shadowColor = [UIColor blueColor].CGColor;
//    
//    layer.shadowOffset = CGSizeMake(2, 2);
//    //透明度
//    layer.shadowOpacity = .9;
//    //设置锚点
//    layer.anchorPoint = CGPointZero;
//    
//    layer.delegate = self;
//   
//    [self.view.layer addSublayer:layer];
//    //调用图层setNeedDisplay,否则代理方法不会被调用
//    [layer setNeedsDisplay];
    
    
    
    CGPoint position= CGPointMake(180, 300);
    CGRect bounds=CGRectMake(0, 0, PHOTO_HEIGHT, PHOTO_HEIGHT);
    CGFloat cornerRadius=PHOTO_HEIGHT/2;
    CGFloat borderWidth=2;
    
    //阴影图层
    CALayer *layerShadow=[[CALayer alloc]init];
    layerShadow.bounds=bounds;
    layerShadow.position=position;
    layerShadow.cornerRadius=cornerRadius;
    layerShadow.shadowColor=[UIColor grayColor].CGColor;
    layerShadow.shadowOffset=CGSizeMake(2, 1);
    layerShadow.shadowOpacity=1;
    layerShadow.borderColor=[UIColor blueColor].CGColor;
    layerShadow.borderWidth=borderWidth;
    [self.view.layer addSublayer:layerShadow];
    
    //容器图层
    CALayer *layer=[[CALayer alloc]init];
    layer.bounds=bounds;
    layer.position=position;
    layer.backgroundColor=[UIColor redColor].CGColor;
    layer.cornerRadius=cornerRadius;
    layer.masksToBounds=YES;
    layer.borderColor=[UIColor whiteColor].CGColor;
    layer.borderWidth=borderWidth;
    
    //利用图层形变解决图像倒立问题
    // 第一个参数是旋转角度，后面三个参数形成一个围绕其旋转的向量，起点位置由UIView的center属性标识。
    layer.transform=CATransform3DMakeRotation(M_PI, 0, 0, -1);
    //设置图层代理
    layer.delegate=self;
    
    //添加图层到根图层
    [self.view.layer addSublayer:layer];
    
    //调用图层setNeedDisplay,否则代理方法不会被调用
    [layer setNeedsDisplay];

}
#pragma mark 绘制图形、图像到图层，注意参数中的ctx是图层的图形上下文，其中绘图位置也是相对图层而言的
-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
    //    NSLog(@"%@",layer);//这个图层正是上面定义的图层
    CGContextSaveGState(ctx);
    
    //图形上下文形变，解决图片倒立的问题
    CGContextScaleCTM(ctx, 1, -1);
    CGContextTranslateCTM(ctx, 0, -PHOTO_HEIGHT);
    
    UIImage *image=[UIImage imageNamed:@"火"];
    //注意这个位置是相对于图层而言的不是屏幕
    CGContextDrawImage(ctx, CGRectMake(0, 0, PHOTO_HEIGHT, PHOTO_HEIGHT), image.CGImage);
    
    //    CGContextFillRect(ctx, CGRectMake(0, 0, 100, 100));
    //    CGContextDrawPath(ctx, kCGPathFillStroke);
    
    CGContextRestoreGState(ctx);
}
#pragma mark 点击放大
//一根或多根手指触摸结束离开屏幕时执行
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
//    UITouch *touch=[touches anyObject];
    //创建layer   等于 之前创建的layer self.view的子视图
    CALayer *layer=self.view.layer.sublayers[0];
    //获取跟图层的宽度
    CGFloat width=layer.bounds.size.width;
    if (width==WIDTH) {
        width=WIDTH*3;
//        layer.transform=CATransform3DMakeRotation(M_PI, 0, 0, 0);

    }else{
        width=WIDTH;
//        layer.transform=CATransform3DMakeRotation(M_PI_4, 0, 0,1);
    }

    //设置跟图层的大小
    layer.bounds=CGRectMake(0, 0, width, width);
    //设置跟图层的中心点  添加到手指点的方向
//    layer.position=[touch locationInView:self.view];
    layer.cornerRadius=width/2;
}


@end
