//
//  process.m
//  OCDesignModeExample
//
//  Created by mingwei on 2017/1/11.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "process.h"
#import "gamePlayer.h"
#import "memenToCreateTaker.h"
#import "memenTo.h"


@interface process ()
@property (nonatomic, strong) gamePlayer *player;
@property (nonatomic, strong) memenToCreateTaker *sateAdmin;

@end

@implementation process
- (void)process {
    
    //恢复状态
    memenTo *oldState = [self.sateAdmin getMemto];
    [self.player recoveryState:oldState];
    
    //开始游戏
    [self.player play];
    
//    ...
    
    //保存状态
    [self.sateAdmin createMemto:[self.player saveMemento]];
    
    
}
@end
