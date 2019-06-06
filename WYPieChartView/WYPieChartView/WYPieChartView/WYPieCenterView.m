//
//  WYPieCenterView.m
//  WYPieChartView
//
//  Created by Highden on 2019/6/6.
//  Copyright © 2019 Highden. All rights reserved.
//

#import "WYPieCenterView.h"

@interface WYPieCenterView ()

@property (nonatomic, strong) UIView *centerView;
@end

@implementation WYPieCenterView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.4];
        
        UIView *centerView = [[UIView alloc] init];
        centerView.backgroundColor = [UIColor whiteColor];
        [self addSubview:centerView];
        self.centerView = centerView;
        
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.textColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:1];
        nameLabel.font = [UIFont systemFontOfSize:18];
        nameLabel.textAlignment = NSTextAlignmentCenter;
        [centerView addSubview:nameLabel];

        self.nameLabel = nameLabel;
    }
    
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.layer.cornerRadius = self.frame.size.width * 0.5;
    self.layer.masksToBounds = true;
    
    self.centerView.frame = CGRectMake(6, 6, self.frame.size.width - 6 * 2, self.frame.size.height - 6 * 2);
    self.centerView.layer.cornerRadius = self.centerView.frame.size.width * 0.5;
    self.centerView.layer.masksToBounds = true;
    
    self.nameLabel.frame = self.centerView.bounds;
}

@end
