//
//  WYPieChartView.h
//  WYPieChartView
//
//  Created by Highden on 2019/6/6.
//  Copyright © 2019 Highden. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WYPieModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, WYPieChartViewType) {
    WYPieChartViewTypeNormal,       //简单的饼状图
    WYPieChartViewTypeCustom        //自定义饼状图
};

@interface WYPieChartView : UIView

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) WYPieChartViewType chartType;

@property (nonatomic, strong) NSArray *dataArray;

/** 初始化-1 */
- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title chartType:(WYPieChartViewType)chartType dataSource:(NSArray *)array;

/** 初始化-2 */
- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title chartType:(WYPieChartViewType)chartType;

/** 初始化-3 */
- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title;

/** 绘制 */
- (void)draw;

@end

NS_ASSUME_NONNULL_END
