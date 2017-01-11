//
//  gamePlayer.m
//  OCDesignModeExample
//
//  Created by mingwei on 2017/1/11.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "gamePlayer.h"
#import "memenTo.h"

@interface gamePlayer ()
@property (nonatomic, assign) NSInteger vitality; //生命力
@property (nonatomic, assign) NSInteger attack; //攻击力
@property (nonatomic, assign) NSInteger defense; //防御力
@end

@implementation gamePlayer
- (memenTo *)saveMemento {
    memenTo *save = [[memenTo alloc] init];
    save.vitality = self.vitality;
    save.attack = self.attack;
    save.defense = self.defense;
    
    return save;
}

- (void)recoveryState:(memenTo *)memento {
    self.vitality = memento.vitality;
    self.attack = memento.attack;
    self.defense = memento.defense;
}



@end
