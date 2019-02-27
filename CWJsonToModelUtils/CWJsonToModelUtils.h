//
//  CWJsonToModelUtils.h
//  NewXBB
//
//  Created by it on 2019/2/26.
//  Copyright © 2019年 it. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CWJsonToModelUtils : NSObject

/**
 生成数据模型文件

 @param responseObject 后台返回数据对象
 @param modelHead 模型头名称
 */
+ (void)requstSucceesWithResponseObject:(id)responseObject andFileName:(NSString *)modelHead;



@end

NS_ASSUME_NONNULL_END
