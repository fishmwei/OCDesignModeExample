//
//  SimpleFactoryViewController.m
//  OCDesignModeExample
//
//  Created by mingwei on 2017/3/5.
//  Copyright © 2017年 mw. All rights reserved.
//

#import "SimpleFactoryViewController.h"
#import "OperationFactory.h"

@interface SimpleFactoryViewController () <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) UITextField *firstParaField;
@property (nonatomic, strong) UIPickerView *operationView;
@property (nonatomic, strong) UITextField *secondParaField;
@property (nonatomic, strong) UILabel *result;

@property (nonatomic, strong) NSArray *operationFlags;

@property (nonatomic, assign) NSInteger selectRow;
@end

@implementation SimpleFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self setupData];
    [self setupUI];
    
 
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    self.firstParaField = [[UITextField alloc] initWithFrame:CGRectMake(10, 100, 50, 18)];
    self.firstParaField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.firstParaField.backgroundColor = [UIColor whiteColor];
    self.firstParaField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.firstParaField];
    self.firstParaField.placeholder  = @"0";
    
    self.operationView = [[UIPickerView alloc] initWithFrame:CGRectMake(62, 100, 40, 50)];
    self.operationView.center = CGPointMake(self.operationView.center.x, self.firstParaField.center.y);
    
    [self.view addSubview:self.operationView];
    self.operationView.dataSource = self;
    self.operationView.delegate = self;
    
    self.secondParaField = [[UITextField alloc] initWithFrame:CGRectMake(106, 100, 30, 18)];
    self.secondParaField.autocorrectionType = UITextAutocorrectionTypeNo;
    self.secondParaField.backgroundColor = [UIColor whiteColor];
    self.secondParaField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.secondParaField];
    self.secondParaField.placeholder  = @"0";
    
    UILabel *equal = [[UILabel alloc] initWithFrame:CGRectMake(140, 100, 30, 18)];
    [self.view addSubview:equal];
    equal.text = @"=";
    equal.textAlignment = NSTextAlignmentCenter;
    
    self.result = [[UILabel alloc] initWithFrame:CGRectMake(170, 100, 40, 18)];
    [self.view addSubview:self.result];
    self.result.textAlignment = NSTextAlignmentCenter;
    self.result.text = @"0";
    
    UIButton *compute = [UIButton buttonWithType:UIButtonTypeSystem];
    compute.frame = CGRectMake(10, 150, 100, 44);
    [self.view addSubview:compute];
    [compute setTitle:@"Compute" forState:UIControlStateNormal];
    [compute addTarget:self action:@selector(clickedButton) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)clickedButton {
    
    
    BaseOperation *op = [OperationFactory createOperation:self.selectRow];
    
    op.a = [self.firstParaField.text floatValue];
    op.b = [self.secondParaField.text floatValue];
    
    self.result.text = [NSString stringWithFormat:@"%@", @(op.getResult)];
    
    
}



- (void)setupData {
    self.operationFlags = @[@"+", @"-", @"*", @"/"];
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.operationFlags.count;
}

- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component  {
    return self.operationFlags[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.selectRow = row;
}

@end
