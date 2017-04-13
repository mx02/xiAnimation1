//
//  caViewController.m
//  xiAnimation
//
//  Created by mxbj on 2017/4/11.
//  Copyright © 2017年 Animation. All rights reserved.
//

#import "caViewController.h"
#define Screen_height   [[UIScreen mainScreen] bounds].size.height
#define Screen_width    [[UIScreen mainScreen] bounds].size.width

@interface caViewController ()<CAAnimationDelegate>{
    CADisplayLink *displayLink;
    CAAnimationGroup *animationGroup;
}
@property(nonatomic,strong)NSTimer *timer ;
@property (nonatomic) double getAddressTime;
@end

@implementation caViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor whiteColor];
   
}

- (void)startAnimation{
    self.getAddressTime = [[NSDate date] timeIntervalSince1970];

    //创建执行动画的Layer
    
    CALayer*layer = [[CALayer alloc] init];
    
    layer.frame=CGRectMake(0,0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.height);
    
    layer.cornerRadius= [UIScreen mainScreen].bounds.size.height/2;
    
    layer.position=self.view.layer.position;
    layer.borderColor = [UIColor redColor].CGColor;
    layer.borderWidth = 1;
    layer.masksToBounds=YES;

    [self.view.layer addSublayer:layer];
    
     UIColor *backColor = [UIColor colorWithRed:70/255.0 green:100/255.0 blue:97/255.0 alpha:0.5];
    
    
    CAGradientLayer *layer1 = [[CAGradientLayer alloc] init];
    

    layer1.cornerRadius = [UIScreen mainScreen].bounds.size.height/2;
    layer1.frame = CGRectMake(0, 0, layer.cornerRadius*2-1 , layer.cornerRadius*2-1);
    layer1.position = CGPointMake([[UIScreen mainScreen]bounds].size.width/2, [[UIScreen mainScreen]bounds].size.height/2);
    backColor = [UIColor colorWithRed:100/255.0 green:46/255.0 blue:97/255.0 alpha:0.8];
    layer1.colors = [NSArray arrayWithObjects:(id)backColor.CGColor,[UIColor colorWithRed:70/255.0 green:100/255.0 blue:97/255.0 alpha:0].CGColor ,nil];
    
    [self.view.layer addSublayer:layer1];

    
    
    //圆的大小改变
    
    CABasicAnimation*boundsAnimation =[CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
    
    boundsAnimation.fromValue= [NSNumber numberWithFloat:0];
    
    boundsAnimation.toValue= [NSNumber numberWithFloat:1];
    
    boundsAnimation.removedOnCompletion=YES;
    
    boundsAnimation.duration=2.0;
    
    //透明度的改变
    
    CABasicAnimation*opacityAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    
    opacityAnimation.fromValue= [NSNumber numberWithFloat:1];
    
    opacityAnimation.toValue= [NSNumber numberWithFloat:0];
    
    opacityAnimation.removedOnCompletion=YES;
    
    opacityAnimation.duration=2.0;
    
    //创建动画组
    
    CAAnimationGroup*group = [CAAnimationGroup animation];
    
    group.animations=@[boundsAnimation, opacityAnimation];
    
    group.duration=2.0;
    
    group.removedOnCompletion=YES;
    
    [layer addAnimation:boundsAnimation forKey:nil];
    [layer1 addAnimation:group forKey:nil];

//    [layer addAnimation:(nonnull CAAnimation *) forKey:<#(nullable NSString *)#>]
//
//    //动画完成后移除Layer
//    
//    [self performSelector:@selector(removeLayer:)withObject:  layerafterDelay:3];
    [self performSelector:@selector(removeLayer:) withObject:layer afterDelay:1.9];
    [self performSelector:@selector(removeLayer:) withObject:layer1 afterDelay:1.9];

}

//移除Layer

- (void)removeLayer:(CALayer*)layer{
    
    [layer removeFromSuperlayer];
    [layer removeFromSuperlayer];
   //self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(action) userInfo:nil repeats:NO];
}

//点击页面开始执行动画

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent*)event{
    
    [self startAnimation];
    
}

//点击事件结束2秒后开始执行startAnimation
-(void)action{
    NSTimeInterval currentTime = [[NSDate date] timeIntervalSince1970];;
    if (currentTime-self.getAddressTime>2) {
        [self startAnimation];
        [self.timer invalidate];
        self.timer = nil;
    }else{
        self.timer = [NSTimer scheduledTimerWithTimeInterval:0 target:self selector:@selector(action) userInfo:nil repeats:NO];
    }
}





//(2)动画设置
-(void)startDisplayLink
{
    //创建一个图层
    CALayer *layer = [CALayer layer];
    //设置圆角度
    layer.cornerRadius = [UIScreen mainScreen].bounds.size.width * 0.5;
    
    //图层大小
    layer.frame = CGRectMake(0, 0, layer.cornerRadius * 2, layer.cornerRadius * 2);
    
    //图层的位置
    layer.position = self.view.layer.position;
    
    //设置颜色
    UIColor *randomColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1];
    //设置涂成颜色
    layer.backgroundColor = randomColor.CGColor;
    //将图层添加在view的图层上
    [self.view.layer addSublayer:layer];
    
    
    //设置动画快慢
    CAMediaTimingFunction *defaultCurve = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    
    //动画组
    animationGroup = [CAAnimationGroup animation];
    animationGroup.delegate = self;
    animationGroup.duration = 2.0;
    animationGroup.removedOnCompletion = YES; //完成后移除图层
    animationGroup.timingFunction = defaultCurve;
    
    
    //动画
    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
    scaleAnimation.fromValue = @0.0;
    scaleAnimation.toValue = @1.0;
    scaleAnimation.duration = 2.0;
    
    //关键 动画
    CAKeyframeAnimation *opacityAnimation = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    opacityAnimation.duration = 2.0;
    opacityAnimation.values = @[@0.8,@0.4,@0];
    opacityAnimation.keyTimes = @[@0,@0.5,@1];
    opacityAnimation.removedOnCompletion = YES;
    
    NSArray *animations = @[scaleAnimation,opacityAnimation];
    animationGroup.animations = animations;
    [layer addAnimation:animationGroup forKey:nil];
    
    
    [self performSelector:@selector(removeLayer:) withObject:layer afterDelay:1.5];
}




@end
