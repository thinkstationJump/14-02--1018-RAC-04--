//
//  CaculateManager.h
//  04-函数式编程思想
//
//  Created by apple on 15/10/18.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>
// 函数式编程思想特点:对象方法,返回值对象本身,参数必须是Block
@interface CaculateManager : NSObject


/** result */
@property (nonatomic, assign) int result;

@property (nonatomic, assign) BOOL isEqule;

// block:计算
- (CaculateManager *)caculate:(int(^)(int))block;

// block:用于判断
- (CaculateManager *)equle:(int(^)(int))block;

@end
