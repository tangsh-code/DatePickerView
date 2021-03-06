//
//  DatePickerView.m
//  DatePickerView
//
//  Created by tangshuanghui on 2021/3/5.
//

#import "DatePickerView.h"

@interface DatePickerView ()

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation DatePickerView

- (void)dealloc
{
    NSLog(@"%s",__func__);
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self = [[NSBundle mainBundle] loadNibNamed:@"DatePickerView" owner:nil options:nil].firstObject;
        self.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        self.alpha = 0.0;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

+ (instancetype)show:(SureBlock)block
{
    DatePickerView * datePickerView = [DatePickerView new];
    datePickerView.clickSureBlock = block;
    [datePickerView setMaximumDate:[NSDate date]];
    [datePickerView showView];
    
    return datePickerView;
}

- (void)setMaximumDate:(NSDate *)maximumDate
{
    self.datePicker.maximumDate = maximumDate;
}

- (void)showView
{
    self.alpha = 1.0;
    [[UIApplication sharedApplication].keyWindow endEditing:YES];
    [[UIApplication sharedApplication].keyWindow addSubview:self];
}

- (IBAction)cancelButtonAction:(id)sender {
    [self dismiss];
}

- (IBAction)sureButtonAction:(id)sender {
    [self dismiss];
    if (self.clickSureBlock) {
        self.clickSureBlock(self.datePicker.date);
    }
}

- (void)dismiss
{
    [UIView animateWithDuration:0.25 animations:^{
        self.alpha = 0.0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

@end
