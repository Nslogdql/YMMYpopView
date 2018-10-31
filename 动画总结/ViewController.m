//
//  ViewController.m
//  动画总结
//
//  Created by iOS on 16/7/4.
//  Copyright © 2016年 iOS. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
#import "YHManagerView.h"
@interface ViewController ()
//@property (nonatomic,strong)UIView * myView;
//@property (nonatomic,strong)UIView * allview;
@end

@implementation ViewController
static NSInteger sss = 0;
- (void)viewDidLoad {
    [super viewDidLoad];
//    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    view.backgroundColor = [UIColor redColor];
//    self.myView = view;
//    [self.view addSubview:view];
}
- (IBAction)pressButton:(UIButton *)sender {
    YHManagerView *manager = [[YHManagerView alloc] initWithSuperview:self];
    manager.dissBlock = ^(NSString * _Nonnull stringID) {
        NSLog(@"选中的ID----%@",stringID);
    };
    [manager show];
    
}

- (CATransform3D)firstTransform{
    CATransform3D t1 = CATransform3DIdentity;
    t1.m34 = 1.0/-900;
    //带点缩小的效果
    t1 = CATransform3DScale(t1, 0.95, 0.95, 1);
    //绕x轴旋转
    t1 = CATransform3DRotate(t1, 15.0 * M_PI/180.0, 1, 0, 0);
    return t1;
    
}
- (CATransform3D)firstTransform2{
    CATransform3D t1 = CATransform3DIdentity;
    t1.m34 = 1.0/-900;
    
    //带点缩小的效果
      t1 = CATransform3DScale(t1, 1, 1, 1);
    //绕x轴旋转
    t1 = CATransform3DRotate(t1, 15 * M_PI/180.0, 1, 0, 0);
    return t1;
    
}
- (CATransform3D)firstTransform3{
    CATransform3D t1 = CATransform3DIdentity;
    t1.m34 = 1.0/-900;
   // t1.m34 = 1.0/-600;
    
    //带点缩小的效果
    t1 = CATransform3DScale(t1, 1, 1, 1.5);
    //绕x轴旋转
   // t1 = CATransform3DRotate(t1, 0, 1, 0, 0);
    return t1;
    
}


//  view.transform = CGAffineTransformMakeScale(0.5, 0.5);//变小

//   self.myView.transform = CGAffineTransformMake(1, 1, 0.9, 0, 0, 0);

//self.myView.transform = CGAffineTransformMake(1, 1, 15.0 * M_PI/180.0, 1, 0, 0);

/*
 CGAffineTransformMake(a,b,c,d,tx,ty)
 
 ad缩放bc旋转tx,ty位移，基础的2D矩阵
 
 公式
 
 x=ax+cy+tx
 y=bx+dy+ty
 */
//  self.myView.transform = CGAffineTransformMakeScale(1, 0.9 );

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
