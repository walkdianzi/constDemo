//
//  constViewController.m
//  staticDemo
//
//  Created by YMY on 15/7/10.
//  Copyright (c) 2015年 dasheng. All rights reserved.
//

#import "constViewController.h"

/*在ViewController.m中定义了 const int CONSTTEST = 1; 如果此文件的const int CONSTTEST = 1;前不加static就会报重复定义错误*/

static const int CONSTTEST = 1;  //加static表示内联

const int CONSTTEST3 = 3;

@implementation constViewController

-(void)viewDidLoad{
    
    [super viewDidLoad];
    
    NSLog(@"%d",CONSTTEST);
}

@end
