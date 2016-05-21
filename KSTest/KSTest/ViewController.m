//
//  ViewController.m
//  KSTest
//
//  Created by Hale Chan on 16/5/21.
//  Copyright © 2016年 Tips4app. All rights reserved.
//

#import "ViewController.h"
#import <MJExtension/MJExtension.h>

@interface A : NSObject

@property (nonatomic, strong) NSString *a;
@property (nonatomic, strong) NSString *a1;
@property (nonatomic, strong) NSString *a2;
@property (nonatomic, strong) NSString *a3;

@end

@interface B : NSObject

@property (nonatomic, strong) NSString *b;
@property (nonatomic, strong) NSString *b1;
@property (nonatomic, strong) NSString *b2;
@property (nonatomic, strong) NSString *b3;

@end

@interface C : NSObject

@property (nonatomic, strong) NSString *c;
@property (nonatomic, strong) NSString *c1;
@property (nonatomic, strong) NSString *c2;
@property (nonatomic, strong) NSString *c3;

@end

@implementation A

MJCodingImplementation

@end

@implementation B

MJCodingImplementation

@end

@implementation C

MJCodingImplementation

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSInteger i = 0; i < 100; i++) {
        [self doTestWithClass:[A class]];
        [self doTestWithClass:[B class]];
        [self doTestWithClass:[C class]];
    }
}

- (void)doTestWithClass:(Class)aClass
{
    NSDictionary *dict = @{@"a" : @"a",
                          @"b" : @"b",
                          @"c" : @"c",
                          @"a1" : @"a1",
                          @"a2" : @"a2",
                          @"a3" : @"a3",
                          @"b1" : @"b1",
                          @"b2" : @"b2",
                          @"b3" : @"b3",
                          @"c1" : @"c1",
                          @"c2" : @"c2",
                          @"c3" : @"c3"};
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (NSInteger i = 0; i < 10; i++) {
            id oo = [aClass mj_objectWithKeyValues:dict];
            [self dummy:oo];
        }
    });
}

- (void)dummy:(id)obj
{
    NSLog(@"%@", obj);
}

@end
