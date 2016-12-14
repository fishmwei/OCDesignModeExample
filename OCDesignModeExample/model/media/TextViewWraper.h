//
//  TextViewWraper.h
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/13.
//  Copyright © 2016年 mw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MediaCollegeProtocol.h"

@interface TextViewWraper : UITextView <MediaCollegeProtocol>

@property (nonatomic, weak) id <MediaCollegeProtocol> proxy;
@end
