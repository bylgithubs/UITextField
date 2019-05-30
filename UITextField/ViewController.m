//
//  ViewController.m
//  UITextField
//
//  Created by Civet on 2019/5/21.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textField = [[UITextField alloc] init];
    self.textField.frame = CGRectMake(100, 100, 180, 40);
    self.textField.text = @"用户名";
    self.textField.font = [UIFont systemFontOfSize:15];
    self.textField.textColor = [UIColor blueColor];
    //设置边框的风格
    //UITextBorderStyleRoundedRect:圆角风格
    //UITextBorderStyleLine:线宽风格
    //UItextBorderStyleBezel:bezel线程
    //UITextBorderStleNone;
    self.textField.borderStyle = UITextBorderStyleNone;
    //设置虚拟键盘风格
    self.textField.keyboardType = UIKeyboardTypeDefault;
    //提示文字信息
    //当text属性为空，显示此条信息
    //浅灰色提示文字
    self.textField.placeholder = @"请输入用户名称";
    self.textField.backgroundColor = [UIColor orangeColor];
    //是否作为密码输入
    //YES:作为处理，圆点加密
    //NO:正常显示输入的文字
    self.textField.secureTextEntry = NO;
    [self.view addSubview:self.textField];
    
    self.textField.delegate = self;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"开始编辑了");
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"编辑输入结束");
}
//是否可以进行输入
//如果返回YES:可以结束输入，默认为YES
//NO：不能输入文字
- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}
//是否可以结束输入
//如果返回YES:可以结束输入，默认为YES
//NO：不能结束输入文字
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    return  YES;
}

//点击屏幕空白处理调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //使键盘回收，不在作为第一消息响应者
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
