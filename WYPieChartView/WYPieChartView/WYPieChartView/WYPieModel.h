//
//  WYPieModel.h
//  WYPieChartView
//
//  Created by Highden on 2019/6/6.
//  Copyright © 2019 Highden. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WYPieModel : NSObject

/** 名称 */
@property (nonatomic, copy) NSString *name;

/** 比例 */
@property (nonatomic, assign) CGFloat rate;

/** 数值 */
@property (nonatomic, assign) CGFloat value;

- (instancetype)initWithName:(NSString *)name rate:(CGFloat)rate value:(CGFloat)value;

@end

NS_ASSUME_NONNULL_END
