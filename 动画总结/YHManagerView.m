//
//  YHManagerView.m
//  动画总结
//
//  Created by 董其林 on 2018/10/12.
//  Copyright © 2018年 iOS. All rights reserved.
//

#import "YHManagerView.h"

@implementation YHManagerView

- (instancetype)initWithSuperview:(UIViewController *)superViewControlle{
    self = [super initWithFrame:superViewControlle.view.frame];
    if (self) {
        self.superViewControlle = superViewControlle;
        self.userInteractionEnabled = YES;
        self.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.75];
        TestViewController *vc = [[TestViewController alloc] init];
        __weak typeof(self) weakself = self;
        vc.dissBlock = ^(NSString * _Nonnull stringID) {
            [weakself dismissFromSuper];
            if (weakself.dissBlock) {
                weakself.dissBlock(@"233333");
            }
        };
        self.TestVC = vc;
        UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss:)];
        [self addGestureRecognizer:tapGesture];
        [tapGesture setNumberOfTapsRequired:1];
        [self.superViewControlle.view addSubview:self];
    }
    return self;
}
- (void)show{
    [UIView animateWithDuration:0.25 animations:^{
        //            [self.myView.layer setTransform:[self firstTransform]];
        
        UIView * all = [[UIView alloc]initWithFrame:CGRectMake(0, self.bounds.size.height , [UIScreen mainScreen].bounds.size.width,  400)];
        self.allview = all;
        all.backgroundColor = [UIColor yellowColor];
        [self.allview addSubview:self.TestVC.view];
        [self.superViewControlle.view addSubview:self.allview];
        [self.superViewControlle addChildViewController:self.TestVC];
        
        
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.25 animations:^{
            //                self.myView.transform = CGAffineTransformMakeScale(0.9, 0.95);
            self.allview.frame = CGRectMake(0, self.bounds.size.height - 400, [UIScreen mainScreen].bounds.size.width, 400);
        } ];
        
    }];

}
- (void)dismiss:(UITapGestureRecognizer *)gesture{
    [UIView animateWithDuration:0.25 animations:^{
        self.allview.frame = CGRectMake(0, self.bounds.size.height, [UIScreen mainScreen].bounds.size.width, 400);
    }completion:^(BOOL finished) {
        [self removeFromSuperview];
        [self.TestVC.view removeFromSuperview];
        [self.TestVC removeFromParentViewController];
    }];
    
}
- (void)dismissFromSuper{
    [UIView animateWithDuration:0.25 animations:^{
        self.allview.frame = CGRectMake(0, self.bounds.size.height, [UIScreen mainScreen].bounds.size.width, 400);
    }completion:^(BOOL finished) {
        [self removeFromSuperview];
        [self.TestVC.view removeFromSuperview];
        [self.TestVC removeFromParentViewController];
    }];
}
@end
