//
//  tbviewCell.h
//  tableview
//
//  Created by Maple on 2017/7/4.
//  Copyright © 2017年 Maple. All rights reserved.
//
#define IDENT_PERSONNAL_CELL @"personalCell"

#import <UIKit/UIKit.h>

@interface tbviewCell : UITableViewCell

@property (nonatomic, strong) UILabel *caption;
@property (nonatomic, strong) UIImageView *imgView;

@end
