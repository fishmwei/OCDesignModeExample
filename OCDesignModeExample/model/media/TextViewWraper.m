//
//  TextViewWraper.m
//  OCDesignModeExample
//
//  Created by huangmingwei on 16/12/13.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "TextViewWraper.h"

@interface TextViewWraper () <UITextViewDelegate>

@end

@implementation TextViewWraper

- (instancetype)initWithFrame:(CGRect)frame textContainer:(nullable NSTextContainer *)textContainer {
    self = [super initWithFrame:frame textContainer:textContainer];
    if (self) {
        [self initPrivate];
    }
    
    return self;
}

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initPrivate];
    }
    
    return self;
}


- (void)initPrivate {
    self.delegate = self;
    
    
}

#pragma mark - UITextViewDelegate
- (void)textViewDidChange:(UITextView *)textView {
    
    [self.proxy showText:textView.text];
}

- (void)showText:(NSString *)text {
    
    if (!text) {
        return;
    }
    
    if ([text isEqualToString:self.text]) {
        return;
    }
    
    self.text = text;
}
@end
