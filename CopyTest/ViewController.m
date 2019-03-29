//
//  ViewController.m
//  CopyTest
//
//  Created by Sunell on 2019/2/1.
//  Copyright © 2019 Sunell. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Dog.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *tt = @"测试数据";
    _test = [tt copy];
    NSLog(@"tt:--%p,test:--%p",tt,_test);
    
    
    [self test3];
}

//mutableCopy  实现NSMutableCopying协议方法
-(void)test3{
    Dog *d1 = [Dog new];
    d1.name = [[NSMutableString alloc] initWithString:@"小花"];
    d1.sex = @"女";
    NSLog(@"对象：%p,对象名字：%p,对象性别：%p",d1,d1.name,d1.sex);
    
//    由于mutableCopyWithZone协议方法中直接返回的self，所以d2和d1和他们的属性都是指向的是同一块内存地址
    Dog *d2 = [d1 mutableCopy];
    NSLog(@"对象：%p,对象名字：%p,对象性别：%p",d2,d2.name,d2.sex);
    
}

//直接赋值
-(void)test2{
    Dog *d1 = [Dog new];
    d1.name = [[NSMutableString alloc] initWithString:@"小花"];
    d1.sex = @"女";
    NSLog(@"对象：%p,对象名字：%p,对象性别：%p",d1,d1.name,d1.sex);
    
//    直接赋值相当于浅拷贝，d2和d1同时指向同一个内存地址
    Dog *d2 = d1;
    NSLog(@"对象：%p,对象名字：%p,对象性别：%p",d2,d2.name,d2.sex);
    
//    如果d1中将可变属性重新赋值，那么d2中的属性也会跟着改变
    [d1.name appendString:@"11111"];
    
    NSLog(@"d1:--%@,d2:--%@",d1.name,d2.name);
}

//copy 重写NSCoping协议方法
-(void)test1{
    Person *p1 = [Person new];
    p1.name = @"张三";
    p1.age = 22;
    p1.sex = @"男";
    NSLog(@"对象：%p,对象名字：%p,对象性别：%p",p1,p1.name,p1.sex);
    
    Person *p2 = [p1 copy];
    NSLog(@"对象：%p,对象名字：%p,对象性别：%p",p2,p2.name,p2.sex);
    
    Person *p3 = p1;
    NSLog(@"对象：%p,对象名字：%p,对象性别：%p",p3,p3.name,p3.sex);
}


@end
