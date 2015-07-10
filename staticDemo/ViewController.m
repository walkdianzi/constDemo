//
//  ViewController.m
//  staticDemo
//
//  Created by YMY on 15/7/9.
//  Copyright (c) 2015年 dasheng. All rights reserved.
//

#import "ViewController.h"
#import "constViewController.h"
#import "ViewController2.h"

const int CONSTTEST = 1;


//充值账户类型
typedef enum {
    AccountZhifuBao = 1,   //支付宝
    AccountWeixin = 2      //微信
} AccountType;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*--------enum类型常量------------*/
    AccountType accountType;
    accountType = AccountWeixin;
    NSLog(@"%d",accountType);
    
    /*------------const常量----------*/
    NSLog(@"%d",CONSTTEST);   //constViewController.m 中 static const int CONSTTEST = 1;表示内联，不会报重复定义的错误
    NSLog(@"%d",CONSTTEST2);

    /*----------指针常量-----------*/
    NSString * const ptr1 = @"AB";
    //ptr1 = @"A";   //错误，指针不可变, ptr1不可变
    NSLog(@"%@",ptr1);
    
    /*-------常量指针-----------*/
    const NSString *ptr2 = @"BC";
    ptr2 = @"CD";  //正确，*ptr2不可变，ptr2可变
    
    
    ViewController2 *VC2 = [[ViewController2 alloc] init];
    [self presentViewController:VC2 animated:YES completion:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
