//
//  CashContext.h
//  OCDesignModeExample
//
//  Created by mingwei on 2017/1/10.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "CashSuper.h"
#import "CashSuper.h"

@interface CashContext : CashSuper
@property (nonatomic, strong) CashSuper *casher;

- (CGFloat)getResult:(CGFloat)money;

@end
