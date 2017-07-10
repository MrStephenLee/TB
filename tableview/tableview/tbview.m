//
//  tbview.m
//  tableview
//
//  Created by Maple on 2017/7/4.
//  Copyright © 2017年 Maple. All rights reserved.
//

#import "tbview.h"

@implementation tbview
- (instancetype)initWithParentView:(UIView *)parentView
{
    if (self = [super init]) {
        NSInteger tag = 100;
        // 主视图
        [parentView addSubview:self];
        self.backgroundColor = [UIColor blueColor];
        self.frame = CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height);
        
        
        // 主体表格
        _personalTableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _personalTableView.frame = CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width , [UIScreen mainScreen].bounds.size.height);
        _personalTableView.tag = tag;
        _personalTableView.backgroundColor = [UIColor blueColor];
        [self addSubview:_personalTableView];
        
        // 设置表格样式
        _personalTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _personalTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
        
        // 表格头部
        UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 10)];
        header.backgroundColor = [UIColor blueColor];
        _personalTableView.tableHeaderView = header;
        
        // 注册必要的单元格
        [_personalTableView registerClass:[tbviewCell class] forCellReuseIdentifier:@"personalCell"];
        
    }
    return self;
    
}


@end
