//
//  WYPieModel.m
//  WYPieChartView
//
//  Created by Highden on 2019/6/6.
//  Copyright © 2019 Highden. All rights reserved.
//

#import "WYPieModel.h"

@implementation WYPieModel

- (instancetype)initWithName:(NSString *)name rate:(CGFloat)rate value:(CGFloat)value {

    self = [super init];
    if (self) {
        self.name = name;
        self.rate = rate;
        self.value = value;
    }
    return self;
}

@end
