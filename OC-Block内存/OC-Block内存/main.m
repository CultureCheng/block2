//
//  main.m
//  OC-Block内存
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TestClass *tc=[[TestClass alloc] init];
        NSLog(@"tc=%@",tc);
        NSLog(@"block=%@",tc.block);
    }
    return 0;
}
