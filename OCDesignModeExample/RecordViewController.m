//
//  RecordViewController.m
//  OCDesignModeExample
//
//  Created by mingwei on 2016/12/12.
//  Copyright © 2016年 mw. All rights reserved.
//

#import "RecordViewController.h"

@interface RecordViewController ()
@property (nonatomic, retain) NSMutableArray *undoArray;
@property (nonatomic, retain) NSMutableArray *redoArray;
@property (nonatomic, retain) RecordItem *currentItem;

@property (nonatomic, retain) UIButton *undoBtn;
@property (nonatomic, retain) UIButton *redoBtn;
@property (nonatomic, retain) NSMutableArray *selectViews;
@end

@implementation RecordViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupData];
    [self setupUI];
    
    
}

- (void)setupData {
    self.undoArray = [NSMutableArray array];
    self.redoArray = [NSMutableArray array];
    self.selectViews = [NSMutableArray array];
}

- (void)setupUI {
    self.undoBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:self.undoBtn];
    self.undoBtn.frame = CGRectMake(15, 100, 100, 44);
    [self.undoBtn setTitle:@"UNDO" forState:UIControlStateNormal];
    [self.undoBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.undoBtn setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    [self.undoBtn setEnabled:NO];
    self.undoBtn.layer.borderWidth = 1;
    self.undoBtn.layer.borderColor = [UIColor blackColor].CGColor;
    [self.undoBtn addTarget:self action:@selector(undoAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.redoBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:self.redoBtn];
    self.redoBtn.frame = CGRectMake(130, 100, 100, 44);
    [self.redoBtn setTitle:@"REDO" forState:UIControlStateNormal];
    [self.redoBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.redoBtn setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    [self.redoBtn setEnabled:NO];
    self.redoBtn.layer.borderWidth = 1;
    self.redoBtn.layer.borderColor = [UIColor blackColor].CGColor;
    [self.redoBtn addTarget:self action:@selector(redoAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self setupBtns];
    
}

- (void)setupBtns {
    //draw line
    CGFloat offsetX = 0;
    CGFloat offsetY = CGRectGetMaxY(self.undoBtn.frame) + 15;
    CGSize itemSize = CGSizeMake(floor((CGRectGetWidth(self.view.bounds) - 2)/3), 91);
    
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(offsetX, offsetY, CGRectGetWidth(self.view.bounds), 1)];
    line.backgroundColor = [UIColor redColor];
    [self.view addSubview:line];
    offsetY += 1;
    
    CGFloat lineVX = 0;
    for (NSInteger lineIndex = 0; lineIndex < 3; lineIndex++) {
        CGFloat ox = offsetX;
        CGFloat oy = offsetY;
        lineVX += itemSize.width;
        for (NSInteger col = 0; col < 3; col++) {
            UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(ox, oy, itemSize.width, itemSize.height)];
            [self.view addSubview:btn];
            [btn setImage:[UIImage imageNamed:@"btnSelectedImg"] forState:UIControlStateSelected];
            [btn addTarget:self action:@selector(btnPressed:) forControlEvents:UIControlEventTouchUpInside];
            ox += itemSize.width + 1;
            [self.selectViews addObject:btn];
            btn.tag = self.selectViews.count;
        }
        
        offsetY += itemSize.height;
        UIView *line1 = [[UIView alloc] initWithFrame:CGRectMake(offsetX, offsetY, CGRectGetWidth(self.view.bounds), 1)];
        line1.backgroundColor = [UIColor redColor];
        [self.view addSubview:line1];
        offsetY += 1;
        
        //        竖线
        if (lineIndex != 2) {
            UIView *lineV = [[UIView alloc] initWithFrame:CGRectMake(lineVX, CGRectGetMaxY(self.undoBtn.frame) + 15, 1, 4 + 3*itemSize.height)];
            lineV.backgroundColor = [UIColor redColor];
            [self.view addSubview:lineV];
            lineVX += 1;
        }
    }
    
}

- (void)undoAction {
    RecordItem *item = [self.undoArray lastObject];
    UIButton *btn =  self.selectViews[item.index - 1];
    btn.selected = item.selected;
    
    [self.undoArray removeObject:item];
    [self.redoArray addObject:item];
    [self updateBtnState];
}

- (void)redoAction {
    RecordItem *item = [self.redoArray lastObject];
    UIButton *btn =  self.selectViews[item.index - 1];
    btn.selected = !item.selected;
    
    [self.redoArray removeObject:item];
    [self.undoArray addObject:item];
    [self updateBtnState];
}

- (void)btnPressed:(id)sender {
    [self.redoArray removeAllObjects];
    
    UIButton *btn = (UIButton *)sender;
    
    RecordItem *item = [[RecordItem alloc] init];
    item.index = btn.tag;
    item.selected = btn.selected;
    [self.undoArray addObject:item];
    btn.selected = !btn.selected;
    
    [self updateBtnState];
}

- (void)updateBtnState {
 
    self.undoBtn.enabled = self.undoArray.count > 0;
 
    
    self.redoBtn.enabled = self.redoArray.count > 0;
}
@end
