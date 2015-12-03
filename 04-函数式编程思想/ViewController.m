//
//  ViewController.m
//  04-函数式编程思想
//
//  Created by apple on 15/10/18.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "ViewController.h"

#import "CaculateManager.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 利用函数式编程思想写一个计算器
    // 函数式编程思想特点:对象方法,返回值对象本身,参数必须是Block
    
    CaculateManager *mgr = [[CaculateManager alloc] init];
    // 5 + 5
    // 判断计算的值
     BOOL isequle = [[[mgr caculate:^int(int result){
           // 计算
            result +=  5;
            result += 5;
            result *= 10;
            
            return  result;
        }] equle:^int(int result) {
            return  result == 100;
            
        }] isEqule];
    NSLog(@"%d",isequle);
    
}



@end
