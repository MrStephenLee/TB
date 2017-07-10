//
//  TableViewCell2.m
//  tableview
//
//  Created by Maple on 2017/7/5.
//  Copyright © 2017年 Maple. All rights reserved.
//

#import "TableViewCell2.h"

@implementation TableViewCell2

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self createUI];
    }
    return self;
    
}
-(void)createUI
{
    _redImage = [[UIImageView alloc]initWithFrame:CGRectMake(200, 10, 100, 20)];
    _redImage .backgroundColor = [UIColor redColor];
    [self.contentView addSubview:_redImage];
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
