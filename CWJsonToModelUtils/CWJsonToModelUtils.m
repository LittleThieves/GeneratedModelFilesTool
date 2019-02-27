//
//  CWJsonToModelUtils.m
//  NewXBB
//
//  Created by it on 2019/2/26.
//  Copyright © 2019年 it. All rights reserved.
//

#import "CWJsonToModelUtils.h"
#import "CreatPropert.h"

@implementation CWJsonToModelUtils

#pragma mark - 后端返回的数据成功
+ (void)requstSucceesWithResponseObject:(id)responseObject andFileName:(NSString *)modelHead {
    if (kObjIsNotNull(responseObject)) {
        //删除原先的文件夹
        [CWJsonToModelUtils deleteOldDirectory];
        // KVC = 1,JSModel = 2
        NSString *HomePath = @"/Users/it/Desktop/MyModel/";
        //分析数据结构创建模型文件
        [CreatPropert creatProperty:responseObject fileName:modelHead WithContext:@"" savePath:HomePath withNSNULL:YES withNSDATE:YES withNSNUMBER:YES withGiveData:1 withModelName:modelHead];
        DLog(@"模型文件地址=====%@",HomePath)
    }
}

#pragma mark - 删除原先的文件夹
+ (void)deleteOldDirectory {
    //删除原先的文件夹
    BOOL yes=YES;
    NSString *HomePath = @"/Users/it/Desktop/MyModel/";
    if([[NSFileManager defaultManager]fileExistsAtPath:HomePath isDirectory:&yes]){
        [[NSFileManager defaultManager]removeItemAtPath:HomePath error:nil];
    }
}


@end
