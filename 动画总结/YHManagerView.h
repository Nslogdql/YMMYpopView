//
//  YHManagerView.h
//  动画总结
//
//  Created by 董其林 on 2018/10/12.
//  Copyright © 2018年 iOS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestViewController.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^dissblock)(NSString *stringID);
@interface YHManagerView : UIView
@property(nonatomic, copy) dissblock  dissBlock;
@property(nonatomic, strong) UIViewController  *superViewControlle;
@property(nonatomic, strong) TestViewController  *TestVC;
@property (nonatomic,strong)UIView * myView;
@property (nonatomic,strong)UIView * allview;
- (instancetype)initWithSuperview:(UIViewController *)superViewControlle;
- (void)show;
- (void)dismiss;
@end

NS_ASSUME_NONNULL_END
