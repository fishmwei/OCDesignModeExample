//
//  OperationFactory.m
//  OCDesignModeExample
//
//  Created by mingwei on 2017/3/5.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "OperationFactory.h"
#import "AddOperation.h"
#import "SubOperation.h"
#import "MulOperation.h"
#import "DivOperation.h"


@implementation OperationFactory
+ (nullable BaseOperation *)createOperation:(OperationType)operation {
    BaseOperation *retOperation = nil;
    switch (operation) {
        case OperationTypeAdd:
            retOperation = [[AddOperation alloc] init];
            break;
        case OperationTypeSub:
            retOperation = [[SubOperation alloc] init];
            break;
        case OperationTypeMul:
            retOperation = [[MulOperation alloc] init];
            break;
        case OperationTypeDiv:
            retOperation = [[DivOperation alloc] init];
            break;
            
        default:
            break;
    }
    
    return retOperation;
}

@end
