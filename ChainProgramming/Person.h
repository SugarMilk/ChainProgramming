//
//  Person.h
//  ChainProgramming
//
//  Created by huangjian on 16/12/12.
//  Copyright © 2016年 huangjian. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

typedef Person *(^PersonInstance)();


@interface Person : NSObject

@property (nonatomic, assign) NSInteger age;

// 不接收参数
- (PersonInstance)run;
- (PersonInstance)eat;
- (PersonInstance)study;

// 接受参数
- (Person * (^)(BOOL))sleep;

// 返回非实例对象
+ (NSInteger)getAge:(void (^)(Person *person))block;
- (NSInteger)getAge:(void (^)())block;

@end
