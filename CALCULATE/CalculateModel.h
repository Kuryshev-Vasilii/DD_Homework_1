//
//  CalculateModel.h
//  CALCULATE
//
//  Created by Vasilii Kuryshev on 09.10.17.
//  Copyright © 2017 Vasilii Kuryshev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CalculateModel : NSObject

@property (copy, nonatomic) NSString *operation;
@property (nonatomic) CGFloat currendOperand;

-(CGFloat)performOperand:(CGFloat) operand;
@end
