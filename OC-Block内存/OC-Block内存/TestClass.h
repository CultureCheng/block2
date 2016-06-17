//
//  TestClass.h
//  OC-Block内存
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestClass : NSObject
//将一个block作为参数
//copy会将代码块从栈区拷贝到堆区,防止在使用之前已经被释放
@property(copy,nonatomic)void (^block)(void);
@end
