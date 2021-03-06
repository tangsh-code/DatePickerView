//
//  ViewController.m
//  DatePickerView
//
//  Created by tangshuanghui on 2021/3/5.
//

#import "ViewController.h"
#import "DatePickerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)selectDateAction:(id)sender {
    [DatePickerView show:^(NSDate * _Nonnull date) {
        NSLog(@"date === %@", date);
    }];
    
//    DatePickerView * datePickerView = [DatePickerView new];
//    [datePickerView setMaximumDate:[NSDate date]];
//    datePickerView.clickSureBlock = ^(NSDate * _Nonnull date) {
//        NSLog(@"date === %@", date);
//    };
//    [datePickerView showView];
}

@end
