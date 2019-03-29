//
//  Dog.h
//  CopyTest
//
//  Created by Sunell on 2019/2/1.
//  Copyright © 2019 Sunell. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject<NSCopying,NSMutableCopying>

@property(nonatomic,strong)NSMutableString *name;
@property(nonatomic,copy)NSString *sex;

@end

NS_ASSUME_NONNULL_END
