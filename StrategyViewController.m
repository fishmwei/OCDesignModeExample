//
//  StrategyViewController.m
//  OCDesignModeExample
//
//  Created by mingwei on 2017/1/10.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "StrategyViewController.h"
#import "CashContext.h"
#import "CashRebate.h"
#import "CashReturn.h"

@interface StrategyViewController ()
@property (nonatomic, strong) UITextField *normalField;
@property (nonatomic, strong) UILabel *resultLabel0;
@property (nonatomic, strong) UILabel *resultLabel1;
@end

@implementation StrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self setupData];
    [self setupUI];
    
    
}

- (void)setupData {
    
}

- (void)setupUI {
    [self setTitle:@"策略模式"];
    
    UILabel *l0 = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 100, 15)];
    [self.view addSubview:l0];
    l0.text = @"原价（元）";
    
    self.normalField = [[UITextField alloc] initWithFrame:CGRectMake(120, 100, 100, 15)];
    self.normalField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.normalField];
    
    UILabel *l1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 120, 100, 15)];
    [self.view addSubview:l1];
    l1.text = @"打八折";
    self.resultLabel0 = [[UILabel alloc] initWithFrame:CGRectMake(120, 120, 100, 15)];
    [self.view addSubview:self.resultLabel0];
    
    UILabel *l2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 140, 100, 15)];
    [self.view addSubview:l2];
    l2.text = @"满100减20";
    self.resultLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(120, 140, 100, 15)];
    [self.view addSubview:self.resultLabel1];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(10, 160, 100, 44);
    [self.view addSubview:btn];
    [btn setTitle:@"计算" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(BtnPressed) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)BtnPressed {
    NSString *normal = self.normalField.text;
    CGFloat money = [normal floatValue];
    
    CashContext *context = [[CashContext alloc] init];
    //打八折
    context.casher = [[CashRebate alloc] initWithRebate:0.8f];
    self.resultLabel0.text = [NSString stringWithFormat:@"%.1f",[context getResult:money]];
    //满1000减20
    context.casher = [[CashReturn alloc] initWithReach:100.0f returnBack:20.0f];
    self.resultLabel1.text = [NSString stringWithFormat:@"%.1f",[context getResult:money]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
