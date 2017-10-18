//
//  ViewController.m
//  CALCULATE
//
//  Created by Vasilii Kuryshev on 09.10.17.
//  Copyright © 2017 Vasilii Kuryshev. All rights reserved.
//

#import "ViewController.h"
#import "CalculateModel.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) CalculateModel *model;
@property (nonatomic) BOOL waitNextOperand;

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.model = [[CalculateModel alloc] init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onEqualPressed:(UIButton *)sender {
    CGFloat value = [self.model performOperand:self.valueLabel.text.floatValue];
    
    self.valueLabel.text = [NSString stringWithFormat:@"%f", value];
    self.valueLabel.text = [NSString stringWithFormat:@"%g",value];
    self.model.currendOperand = value;
}
- (IBAction)onClearPressed:(UIButton *)sender {
    self.valueLabel.text = @"0";
    self.model.operation = nil;
}
- (IBAction)onOperationPressed:(UIButton *)sender {
    self.model.operation = sender.titleLabel.text;
    self.model.currendOperand = self.valueLabel.text.floatValue;
    self.waitNextOperand = YES;
}
- (IBAction)onOperandPressed:(UIButton *)sender {
    
    NSString *value =self.valueLabel.text;
    if ([value isEqualToString:@"0"] || self.waitNextOperand) {
        value = @"";
        self.waitNextOperand = NO;
    }
    value = [value stringByAppendingString: sender.titleLabel.text];
    self.valueLabel.text = value;
}



@end
