//
//  ViewController.m
//  Tax Calculator
//
//  Created by Brent Dady on 5/4/15.
//  Copyright (c) 2015 Brent Dady. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];

    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;

    self.priceTextField.placeholder = @"Enter a price.";

}

- (IBAction)onCalculateButtonTapped:(id)sender {

    NSString *valueEntered = self.priceTextField.text;
    double priceEntered = valueEntered.intValue;

    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = priceEntered * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"In SF, the tax will be $%.2f", result];
    }

    else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double result = priceEntered * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"In Chicago, the tax will be $%.2f", result];
    }

    else if (self.segmentedControl.selectedSegmentIndex == 2) {
        double result = priceEntered * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"In NYC, the tax wil be $%.2f", result];
    }

}

@end
