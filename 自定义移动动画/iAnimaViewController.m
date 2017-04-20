//
//  iAnimaViewController.m
//  xiAnimation
//
//  Created by mxbj on 2017/4/12.
//  Copyright © 2017年 Animation. All rights reserved.
//

#import "iAnimaViewController.h"

@interface iAnimaViewController ()<CAAnimationDelegate>{
    CALayer *_layer;
    CALayer *_layer1;
    UIImageView *image;
}
@end
@implementation iAnimaViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //设置背景(注意这个图片其实在根图层)
    UIImage *backgroundImage=[UIImage imageNamed:@"底图"];
    self.view.backgroundColor=[UIColor colorWithPatternImage:backgroundImage];
    
    //自定义一个图层
    _layer=[[CALayer alloc]init];
    _layer.bounds=CGRectMake(0, 0, 30, 30);
    _layer.position=CGPointMake(50, 150);
    _layer.anchorPoint=CGPointMake(0.5, 0.6);//设置锚点
    _layer.contents=(id)[UIImage imageNamed:@"火"].CGImage;
    [self.view.layer addSublayer:_layer];
    
    //自定义一个图层
    _layer1=[[CALayer alloc]init];
    _layer1.bounds=CGRectMake(0, 0, 30, 30);
    _layer1.position=CGPointMake(100, 150);
    _layer1.anchorPoint=CGPointMake(0.5,0.6);//设置锚点
    _layer1.contents=(id)[UIImage imageNamed:@"火"].CGImage;
    [self.view.layer addSublayer:_layer1];
}
#pragma mark 移动动画
-(void)translatonAnimation:(CGPoint)location{
    //1.创建动画并指定动画属性
    CABasicAnimation *basicAnimation=[CABasicAnimation animationWithKeyPath:@"position"];
    //2.设置动画属性初始值、结束值
    //    basicAnimation.fromValue=[NSNumber numberWithInteger:50];//可以不设置，默认为图层初始状态
    basicAnimation.toValue=[NSValue valueWithCGPoint:location];
    //设置其他动画属性
    basicAnimation.duration=3.0;//动画时间5秒
    //basicAnimation.repeatCount=HUGE_VALF;//设置重复次数,HUGE_VALF可看做无穷大，起到循环动画的效果
    //    basicAnimation.removedOnCompletion=NO;//运行一次是否移除动画
    basicAnimation.delegate=self;
    //存储当前位置在动画结束后使用
    [basicAnimation setValue:[NSValue valueWithCGPoint:location] forKey:@"KCBasicAnimationLocation"];
    //3.添加动画到图层，注意key相当于给动画进行命名，以后获得该图层时可以使用此名称获取
    [_layer addAnimation:basicAnimation forKey:@"KCBasicAnimation_Translation"];
    [_layer1 addAnimation:basicAnimation forKey:@"KCBasicAnimation_Translations"];
    NSLog(@"123");
}
#pragma mark 旋转动画
-(void)rotationAnimation{
    //1.创建动画并指定动画属性
    CABasicAnimation *basicAnimation=[CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    //2.设置动画属性初始值、结束值
        basicAnimation.fromValue=[NSNumber numberWithInt:M_PI_2];
    basicAnimation.toValue=[NSNumber numberWithFloat:M_PI_2*18];
    //设置其他动画属性
    basicAnimation.duration=3.0;
    basicAnimation.autoreverses=false;//旋转后再旋转到原来的位置
    //4.添加动画到图层，注意key相当于给动画进行命名，以后获得该动画时可以使用此名称获取
    [_layer addAnimation:basicAnimation forKey:@"KCBasicAnimation_Rotation"];
    [_layer1 addAnimation:basicAnimation forKey:@"KCBasicAnimation_Rotations"];
}
#pragma mark 点击事件
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch=touches.anyObject;
    CGPoint location= [touch locationInView:self.view];
    //创建并开始动画
    [self translatonAnimation:location];
    [self rotationAnimation];
    
    image = [[UIImageView alloc] init];
    image.image = [[UIImage imageNamed:@"bubbleSomeone.png"] stretchableImageWithLeftCapWidth:21 topCapHeight:14];
    
     image.frame = CGRectMake(20,100,300,100);
    [self.view addSubview:image];
    
    
    
}
#pragma mark - 动画代理方法
#pragma mark 动画开始
-(void)animationDidStart:(CAAnimation *)anim{
    NSLog(@"animation(%@) start.\r_layer.frame=%@",anim,NSStringFromCGRect(_layer.frame));
    NSLog(@"%@",[_layer animationForKey:@"KCBasicAnimation_Translation"]);//通过前面的设置的key获得动画
}
#pragma mark 动画结束
-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    NSLog(@"animation(%@) stop.\r_layer.frame=%@",anim,NSStringFromCGRect(_layer.frame));
    //开启事务
    [CATransaction begin];
    //禁用隐式动画
    [CATransaction setDisableActions:YES];
    _layer.position=[[anim valueForKey:@"KCBasicAnimationLocation"] CGPointValue];
    _layer1.position=[[anim valueForKey:@"KCBasicAnimationLocations"] CGPointValue];
    //提交事务
    [CATransaction commit];
}


@end
