//
//  Person.m
//  ChainProgramming
//
//  Created by huangjian on 16/12/12.
//  Copyright © 2016年 huangjian. All rights reserved.
//

#import "Person.h"

@implementation Person

- (PersonInstance)run {
    Person * (^runBlock)() = ^() {
        KSLog(@"Running...");
        
        return self;
    };
    return runBlock;
}

- (PersonInstance)eat {
    Person * (^eatBlock)() = ^() {
        KSLog(@"Eating...");
        
        return self;
    };
    return eatBlock;
}

- (PersonInstance)study {
    return ^() {
        KSLog(@"Study...");
        
        self.age --;
        
        return self;
    };
}

- (Person *(^)(BOOL))sleep {
    return ^id(BOOL value) {
        KSLog(@"Sleep...");
        
        self.age ++;
        
        return self;
    };
}

+ (NSInteger)getAge:(void (^)(Person *person))block {
    Person * p = [[Person alloc] init];
    block(p);       // 执行自定义的Block方法
    return p.age;   // 执行完Block方法，返回操作结果
}

- (NSInteger)getAge:(void (^)())block {
    block(self);
    return self.age;
}



@end
