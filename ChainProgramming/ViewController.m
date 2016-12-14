//
//  ViewController.m
//  ChainProgramming
//
//  Created by huangjian on 16/12/12.
//  Copyright © 2016年 huangjian. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Person * p = [[Person alloc] init];
    
#if 0
    KSLog(@"p.run().eat()");
    p.run().eat();
    
    KSLog(@"p.eat().run()");
    p.eat().run();
    
    KSLog(@"p.run().run().eat().run()");
    p.run().run().eat().run();
    
    KSLog(@"p.eat().study().run()");
    p.eat().study().run();
    
    KSLog(@"p.study().sleep(YES).eat()");
    p.study().sleep(YES).eat();
#endif
    
    NSInteger age = [Person getAge:^(Person *person) {
        person.sleep(YES).sleep(YES).sleep(YES).study();
    }];
    
    KSLog(@"%ld", (long)age);
    
    NSInteger age2 = [p getAge:^{
        p.eat().study().sleep(YES).sleep(YES).sleep(YES).sleep(YES);
    }];
    
    KSLog(@"%ld", (long)age2);
    
    
}



@end
