//
//  RootViewController.m
//  tableview
//
//  Created by Maple on 2017/7/4.
//  Copyright © 2017年 Maple. All rights reserved.
//

#import "RootViewController.h"
#import "TableViewCell2.h"

@interface RootViewController()<UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate>


@property (nonatomic, strong) tbview *mainView;
@property (nonatomic, strong) NSArray *datas;

@end

@implementation RootViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"个人中心";
    
    self.view.backgroundColor = [UIColor whiteColor];
//    // 初始化主视图
    _mainView = [[tbview alloc] initWithParentView:self.view];
//    // 表格绑定
    _mainView.personalTableView.delegate = self;
    _mainView.personalTableView.dataSource = self;
    
    [self loadData];
}

- (void)loadData
{
    // 组装数据
    _datas = @[
               @[
                   @{
                       @"title": @"刷新用户信息",
                       @"icon":@"icon_refresh"
                       },
                   @{
                       @"title": @"排序设置",
                       @"icon":@"icon_sort_list"
                       },
                   @{
                       @"title": @"清除数据",
                       @"icon":@"icon_delete"
                       }
                   ],
               @[
                   @{
                       @"title": @"用户账号",
                       @"icon":@"icon_account_circle"
                       },
                   @{
                       @"title": @"关于软件",
                       @"icon":@"icon_info"
                       },
                   @{
                       @"title": @"问题反馈",
                       @"icon":@"icon_feedback"
                       }
                   ],
               @[
                   @{
                       @"title": @"注销账号",
                       @"icon":@"icon_exit"
                       }
                   ],
               ];
    
    // 重载数据
    [_mainView.personalTableView reloadData];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 0 && indexPath.row == 0) {
        // 刷新用户信息
        NSLog(@"1111");
        
    } else if (indexPath.section == 0 && indexPath.row == 1) {
        // 排序设置
        NSLog(@"2222");

        
    } else if (indexPath.section == 0 && indexPath.row == 2) {
        // 清除数据
        NSLog(@"3333");

    } else if (indexPath.section == 1 && indexPath.row == 0) {
        // 用户账号

    } else if (indexPath.section == 1 && indexPath.row == 1) {
        // 关于软件
    
        
    } else if (indexPath.section == 1 && indexPath.row == 2) {
        // 问题反馈
       
    } else if (indexPath.section == 2 && indexPath.row == 0) {
        // 注销账号
      
    }
}

# pragma mark - table delegate
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *data = [_datas objectAtIndex:indexPath.section];
    NSDictionary *item = [data objectAtIndex:indexPath.row];
    if (indexPath.section == 1 && indexPath.row == 1) {
        TableViewCell2 * cell2 = [[TableViewCell2 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        return cell2;
    }else{
        tbviewCell *cell =[tableView dequeueReusableCellWithIdentifier:IDENT_PERSONNAL_CELL];
        cell.caption.text = [item objectForKey:@"title"];
        return cell;
    }
    
    return [[UITableViewCell alloc]init];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *dic = [_datas objectAtIndex:section];
    return dic.count;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return _datas.count;
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 10;
}

@end



