//
//  TestViewController.h
//  动画总结
//
//  Created by 董其林 on 2018/10/12.
//  Copyright © 2018年 iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^callBack)(NSString *stringID);
@interface TestViewController : UIViewController
@property(nonatomic, copy) callBack  dissBlock;
@end

NS_ASSUME_NONNULL_END
