//
//  RecodePool.h
//  OCDesignModeExample
//
//  Created by mingwei on 2016/12/12.
//  Copyright © 2016年 mw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RecordItem.h"

@interface RecodePool : NSObject
- (BOOL)canRedo;
- (BOOL)canUndo;

- (void)setState:(RecordItem *)state;
- (RecordItem *)getUndoState;
- (RecordItem *)getRedoState;

@end
