//
//  CalculateModel.m
//  CALCULATE
//
//  Created by Vasilii Kuryshev on 09.10.17.
//  Copyright © 2017 Vasilii Kuryshev. All rights reserved.
//

#import "CalculateModel.h"

@implementation CalculateModel

    -(CGFloat)performOperand:(CGFloat) operand 
    {
        CGFloat value = self.currendOperand;
        if ([self.operation isEqualToString:@"x"]) {
            value *= operand;
        } else  if ([self.operation isEqualToString:@"/"]) {
            value /= operand;
        } else if ([self.operation isEqualToString:@"+"]) {
            value += operand;
        } else  if ([self.operation isEqualToString:@"-"]) {
            value -= operand;
        }
        return value;
    }

@end
