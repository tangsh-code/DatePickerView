//
//  DatePickerView.h
//  DatePickerView
//
//  Created by tangshuanghui on 2021/3/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^SureBlock)(NSDate * date);

@interface DatePickerView : UIView

@property (nullable, nonatomic, strong) NSDate *maximumDate;
@property (nonatomic, copy) SureBlock clickSureBlock;
+ (instancetype)show:(SureBlock)block;
- (void)showView;

@end

NS_ASSUME_NONNULL_END
