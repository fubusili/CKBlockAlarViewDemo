//
//  UIAlertView+BlockAlertView.m
//  CKBlockAlertView
//
//  Created by hc_cyril on 16/4/18.
//  Copyright © 2016年 Clark. All rights reserved.
//

#import "UIAlertView+BlockAlertView.h"

#if TARGET_OS_SIMULATOR
#import <objc/runtime.h>
#else
#import <objc/runtime.h>
#import <objc/message.h>
#endif

@implementation UIAlertView (BlockAlertView)

#pragma mark - setters and getters

- (void)setCallBack:(AlertCallBack)callBack {
    objc_setAssociatedObject(self, @selector(callBack), callBack, OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.delegate = self;
}

- (AlertCallBack)callBack{

    return objc_getAssociatedObject(self, @selector(callBack));
}

#pragma mark - delegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

    if (self.callBack) {
        self.callBack(alertView, buttonIndex);
    }
}

@end
