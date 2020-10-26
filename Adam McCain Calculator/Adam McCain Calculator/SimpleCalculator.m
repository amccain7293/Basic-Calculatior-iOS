//
//  SimpleCalculatorrr.m
//  Adam McCain Calculator
//
//  Created by Admin on 4/6/15.
//  Copyright (c) 2015 Adam McCain. All rights reserved.
//

#import "SimpleCalculator.h"

@interface SimpleCalculator ()

@end

@implementation SimpleCalculator


+ (int)calc:(int)num1 :(int)num2 :(int)op {
    int result;
    int firstNum = num1;
    int secondNum = num2;
    int operator = op;
    
    if (operator == 1) {
        result = firstNum + secondNum;
        return result;
    }else if (operator == 2) {
        result = firstNum - secondNum;
        return result;
    }else if (operator == 3) {
        result = firstNum * secondNum;
        return result;
    }else if (operator == 4 && firstNum != 0 && secondNum != 0) {
        result = firstNum / secondNum;
        return result;
    }else {
        result = 0;
        return result;
    }
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
