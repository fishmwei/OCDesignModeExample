//
//  OperationFactory.h
//  OCDesignModeExample
//
//  Created by mingwei on 2017/3/5.
//  Copyright © 2017年 mw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseOperation.h"

typedef NS_ENUM(NSInteger, OperationType) {
    OperationTypeAdd,
    OperationTypeSub,
    OperationTypeMul,
    OperationTypeDiv,
    
};


@interface OperationFactory : NSObject
+ (nullable BaseOperation *)createOperation:(OperationType)operation;

@end
