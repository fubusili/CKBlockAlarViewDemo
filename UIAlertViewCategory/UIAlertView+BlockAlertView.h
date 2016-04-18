//
//  UIAlertView+BlockAlertView.h
//  CKBlockAlertView
//
//  Created by hc_cyril on 16/4/18.
//  Copyright © 2016年 Clark. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^AlertCallBack)(UIAlertView *, NSInteger);

@interface UIAlertView (BlockAlertView)<UIAlertViewDelegate>

//回调block
@property (nonatomic, copy) AlertCallBack callBack;

@end
