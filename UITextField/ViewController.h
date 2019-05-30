//
//  ViewController.h
//  UITextField
//
//  Created by Civet on 2019/5/21.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
//定义一个TestField
//文本输入区域
//自能输入单行文字，不能输入或显示多行
@property(nonatomic,strong) UITextField *textField;

@end

