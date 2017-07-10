//
//  tbview.h
//  tableview
//
//  Created by Maple on 2017/7/4.
//  Copyright © 2017年 Maple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tbviewCell.h"


@interface tbview : UIView

@property (nonatomic, strong) UIView *view;
@property (nonatomic, strong) UITableView *personalTableView;

- (instancetype)initWithParentView:(UIView *)parentView;

@end
