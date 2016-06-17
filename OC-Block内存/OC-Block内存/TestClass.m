//
//  TestClass.m
//  OC-Block内存
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "TestClass.h"

@implementation TestClass
-(instancetype)init
{
    //如果在代码块内部需要使用对象本身，需要将对象改为弱引用指针，避免自身循环引用造成内存泄漏！
//    __weak TestClass *tmpTC=self;
//    __weak [self class] *tmpTC=self;//[self class]只能在方法中使用，不能用他的返回值作为变量的类型  typeof() 可以获取某个对象的具体类型
    __weak typeof(self) tmpTC=self;//也会避免在继承中使用block出问题
    if (self=[super init])
    {
         _block=^{
            NSLog(@"self=%@",tmpTC);
        };//这种写法尽量避免！
    }
    NSLog(@"init=>block=%p",_block);//打印blcok的地址
    return self;
}
-(void)dealloc
{
    NSLog(@"%@被释放了...",self);
}
@end
