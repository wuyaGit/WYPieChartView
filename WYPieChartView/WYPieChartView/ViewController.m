//
//  ViewController.m
//  WYPieChartView
//
//  Created by Highden on 2019/6/6.
//  Copyright © 2019 Highden. All rights reserved.
//

#import "ViewController.h"
#import "WYPieChartView/WYPieChartView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // chart
    WYPieChartView *chart = [[WYPieChartView alloc] initWithFrame:CGRectMake(0, 60, CGRectGetWidth(self.view.frame), 320) title:@"244" chartType:WYPieChartViewTypeCustom];
    [self.view addSubview:chart];
    
    WYPieModel *model1 = [[WYPieModel alloc] initWithName:@"值1：120" rate:0.4918 value:120];
    WYPieModel *model2 = [[WYPieModel alloc] initWithName:@"值2：60" rate:0.2459 value:60];
    WYPieModel *model3 = [[WYPieModel alloc] initWithName:@"值3：43" rate:0.17622 value:43];
    WYPieModel *model4 = [[WYPieModel alloc] initWithName:@"值4：21" rate:0.086 value:21];
    
    chart.dataArray = @[model1, model2, model3, model4];
    [chart draw];
    
    // chart1
    WYPieChartView *chart1 = [[WYPieChartView alloc] initWithFrame:CGRectMake(0, 360, CGRectGetWidth(self.view.frame), 300) title:@"金额" chartType:WYPieChartViewTypeNormal];
    [self.view addSubview:chart1];
    
    WYPieModel *model5 = [[WYPieModel alloc] initWithName:@"值1：120" rate:0.6661 value:21];
    WYPieModel *model6 = [[WYPieModel alloc] initWithName:@"值2：120" rate:0.068 value:21];
    WYPieModel *model7 = [[WYPieModel alloc] initWithName:@"值3：120" rate:0.068 value:21];
    WYPieModel *model8 = [[WYPieModel alloc] initWithName:@"值4：120" rate:0.0594 value:21];
    WYPieModel *model9 = [[WYPieModel alloc] initWithName:@"值5：120" rate:0.0393 value:21];
    WYPieModel *model10 = [[WYPieModel alloc] initWithName:@"值6：120" rate:0.0991 value:21];
    
    chart1.dataArray = @[model5, model6, model7, model8, model9, model10];
    [chart1 draw];

}


@end
