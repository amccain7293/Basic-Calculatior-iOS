//
//  ViewController.m
//  Adam McCain Calculator
//
//  Created by Admin on 4/6/15.
//  Copyright (c) 2015 Adam McCain. All rights reserved.
//

#import "ViewController.h"
#import "SimpleCalculator.h"

@interface ViewController ()

@end

@implementation ViewController

//variables

int firstNumber;
int secondNumber;
int answer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonAdd:(id)sender {
    answer = [SimpleCalculator calc:firstNumber :secondNumber :1];
    [self popUp:answer];
    
}
- (IBAction)buttonSub:(id)sender {
    answer = [SimpleCalculator calc:firstNumber :secondNumber :2];
    [self popUp:answer];
}
- (IBAction)buttonMult:(id)sender {
    answer = [SimpleCalculator calc:firstNumber :secondNumber :3];
    [self popUp:answer];
}
- (IBAction)buttonDiv:(id)sender {
    answer = [SimpleCalculator calc:firstNumber :secondNumber :4];
    [self popUp:answer];
}
- (IBAction)inputOne:(id)sender {
    NSString *numString1 = [self.inputFirst text];
    firstNumber = [numString1 intValue];
}
- (IBAction)inputTwo:(id)sender {
    NSString *numString2 = [self.inputSecond text];
    secondNumber = [numString2 intValue];
}


- (void)popUp:(int)theAnswer {
    NSString *strAnswer = [NSString stringWithFormat:@"%i", theAnswer];
    UIAlertView *myView = [[UIAlertView alloc] initWithTitle:@"Answer" message:strAnswer delegate:nil cancelButtonTitle:@"done" otherButtonTitles:nil, nil];
    [myView show];
}



@end
