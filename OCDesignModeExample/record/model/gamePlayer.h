//
//  gamePlayer.h
//  OCDesignModeExample
//
//  Created by mingwei on 2017/1/11.
//  Copyright © 2017年 mw. All rights reserved.
//

#import <Foundation/Foundation.h>

@class memenTo;

@interface gamePlayer : NSObject
- (memenTo *)saveMemento;
- (void)recoveryState:(memenTo *)memento;

- (void)play;

@end
