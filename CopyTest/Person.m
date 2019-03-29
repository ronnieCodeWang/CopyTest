//
//  Person.m
//  CopyTest
//
//  Created by Sunell on 2019/2/1.
//  Copyright © 2019 Sunell. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(nullable NSZone *)zone{
//    当外部调用copy时会调用这里
//    新建一个对象，与原对象独立起来，将对应值也赋值给这个对象，直接赋值属性相当于属性的浅拷贝，指向同一个内存地址
    Person *p = [Person new];
    p.name = [self.name mutableCopy];  //这里使用mutableCopy表示重新开辟一个内存，不和self.name共用内存
    p.age = self.age;
    p.sex = self.sex;
    return p;
}

@end
