//
//  RecodePool.m
//  OCDesignModeExample
//
//  Created by mingwei on 2016/12/12.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "RecodePool.h"

@interface RecodePool ()
@property (nonatomic, retain) NSMutableArray *undoArray;
@property (nonatomic, retain) NSMutableArray *redoArray;


@end

@implementation RecodePool
- (instancetype)init {
    self = [super init];
    if (self) {
        self.undoArray = [NSMutableArray array];
        self.redoArray = [NSMutableArray array];
    }
    return self;
}

- (BOOL)canUndo {
    return self.undoArray.count > 0;
}

- (void)setState:(RecordItem *)state {
    [self.undoArray addObject:state];
    [self.redoArray removeAllObjects];
}

- (BOOL)canRedo {
    return self.redoArray.count > 0;
}

- (RecordItem *)getUndoState {
    RecordItem *state = [self.undoArray lastObject];
    RecordItem *redoState = [[RecordItem alloc] init];
    redoState.index = state.index;
    redoState.selected = !state.selected;
    [self.redoArray addObject:redoState];
    [self.undoArray removeObject:state];
    
    return state;
}

- (RecordItem *)getRedoState {
    RecordItem *redoState = [self.redoArray lastObject];
    RecordItem *undoState = [[RecordItem alloc] init];
    undoState.index = redoState.index;
    undoState.selected = !redoState.selected;
    [self.undoArray addObject:undoState];

    return redoState;
}

@end
