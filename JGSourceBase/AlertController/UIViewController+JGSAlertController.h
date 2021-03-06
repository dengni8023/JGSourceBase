//
//  UIViewController+JGSAlertController.h
//  JGSourceBase
//
//  Created by 梅继高 on 2019/3/25.
//  Copyright © 2019 MeiJigao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^JGSAlertControllerAction)(UIAlertController * __nonnull alert, NSInteger idx);

@interface UIViewController (JGSAlertController)

#pragma mark - Alert
/**
 Alert 单个按钮，无点击响应
 
 @param title 标题，默认“提示”
 @param message 提示内容
 @return UIAlertController
 */
- (UIAlertController *)jg_alertWithTitle:(nullable NSString *)title message:(NSString *)message;

/**
 Alert 单个按钮，无点击响应
 
 @param title 标题，默认“提示”
 @param message 提示内容
 @param cancel 取消按钮标题
 @return UIAlertController
 */
- (UIAlertController *)jg_alertWithTitle:(nullable NSString *)title message:(NSString *)message cancel:(nullable NSString *)cancel;

/**
 Alert 单个按钮，有点击响应
 
 @param title 标题，默认“提示”
 @param message 提示内容
 @param cancel 取消按钮标题
 @param action 点击响应block
 @return UIAlertController
 */
- (UIAlertController *)jg_alertWithTitle:(nullable NSString *)title message:(NSString *)message cancel:(nullable NSString *)cancel action:(nullable JGSAlertControllerAction)action;

/**
 * Alert 双按钮
 
 @param title 标题，默认“提示”
 @param message 提示内容
 @param cancel 取消按钮标题
 @param other 确定按钮标题
 @param action 点击响应block
 @return UIAlertController
 */
- (UIAlertController *)jg_alertWithTitle:(nullable NSString *)title message:(NSString *)message cancel:(nullable NSString *)cancel other:(nullable NSString *)other action:(nullable JGSAlertControllerAction)action;

/**
 * Alert 双按钮，红色警告destructive按钮
 
 @param title 标题，默认“提示”
 @param message 提示内容
 @param cancel 取消按钮标题
 @param destructive 警告按钮标题
 @param action 点击响应block
 @return UIAlertController
 */
- (UIAlertController *)jg_alertWithTitle:(nullable NSString *)title message:(NSString *)message cancel:(nullable NSString *)cancel destructive:(nullable NSString *)destructive action:(nullable JGSAlertControllerAction)action;

/**
 Alert 多按钮
 
 @param title 标题，默认“提示”
 @param message 提示内容
 @param cancel 取消按钮标题
 @param others 目前仅支持不多于20个，多余不显示
 @param action 点击响应block
 @return UIAlertController
 */
- (UIAlertController *)jg_alertWithTitle:(nullable NSString *)title message:(NSString *)message cancel:(nullable NSString *)cancel others:(nullable NSArray<NSString *> *)others action:(nullable JGSAlertControllerAction)action;

/**
 Alert 多按钮，红色警告destructive按钮
 
 @param title 标题，默认“提示”
 @param message 提示内容
 @param cancel 取消按钮标题
 @param destructive 警告按钮标题
 @param others 目前仅支持不多于20个，多余不显示
 @param action 点击响应block
 @return UIAlertController
 */
- (UIAlertController *)jg_alertWithTitle:(nullable NSString *)title message:(NSString *)message cancel:(nullable NSString *)cancel destructive:(nullable NSString *)destructive others:(nullable NSArray<NSString *> *)others action:(nullable JGSAlertControllerAction)action;

#pragma mark - ActionSheet
/**
 Actionsheet
 
 @param title 标题，默认“提示”
 @param cancel 提示内容
 @param others 目前仅支持不多于20个，多余不显示
 @param action 点击响应block
 @return UIActionSheet / UIAlertController
 */
- (UIAlertController *)jg_actionSheetWithTitle:(nullable NSString *)title cancel:(nullable NSString *)cancel others:(NSArray<NSString *> *)others action:(nullable JGSAlertControllerAction)action;

/**
 Actionsheet，红色警告destructive按钮
 
 @param title 标题，默认“提示”
 @param cancel 提示内容
 @param destructive 警告按钮标题
 @param others 目前仅支持不多于20个，多余不显示
 @param action 点击响应block
 @return UIActionSheet / UIAlertController
 */
- (UIAlertController *)jg_actionSheetWithTitle:(nullable NSString *)title cancel:(nullable NSString *)cancel destructive:(nullable NSString *)destructive others:(NSArray<NSString *> *)others action:(nullable JGSAlertControllerAction)action;

#pragma mark - Hide
/**
 隐藏弹出的实现
 
 @return 是否需要隐藏
 */
- (BOOL)jg_hideCurrentAlert:(BOOL)animated;

@end

@interface UIAlertController (JGSAlertController)

@property (nonatomic, assign, readonly) NSInteger jg_cancelIdx; // 0
@property (nonatomic, assign, readonly) NSInteger jg_destructiveIdx; // 1
@property (nonatomic, assign, readonly) NSInteger jg_firstOtherIdx; // 2

@end

NS_ASSUME_NONNULL_END
