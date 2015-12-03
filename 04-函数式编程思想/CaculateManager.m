//
//  CaculateManager.m
//  04-函数式编程思想
//
//  Created by apple on 15/10/18.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "CaculateManager.h"

@implementation CaculateManager
- (CaculateManager *)caculate:(int (^)(int))block
{
    _result = block(_result);
    
    return self;
}

- (CaculateManager *)equle:(int (^)(int))block
{
   _isEqule =  block(_result);
    
    return self;
}
@end
