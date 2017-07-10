

#import "tbview.h"
#import "tbviewCell.h"

@implementation tbviewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        // 标题
        _caption = [[UILabel alloc]initWithFrame:CGRectMake(50, 10, 100, 20)];
        [_caption setFont:[UIFont systemFontOfSize:16.0]];
        [_caption setTextColor:[UIColor redColor]];
        [self.contentView addSubview:_caption];
        
        // 设置imageView
        _imgView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 7, 30, 30)];
        _imgView.backgroundColor = [UIColor redColor];
        _imgView.contentMode = UIViewContentModeScaleAspectFill;
        [self.contentView addSubview:_imgView];
        
        // 辅助样式
        UIView *_topLine = [[UIView alloc] init];
        [self addSubview: _topLine];
        
        [_caption setTextColor:[UIColor redColor]];
//        _topLine.sd_layout
//        .widthRatioToView(self, 1.0)
//        .heightIs(0.5)
//        .topEqualToView(self)
//        .leftEqualToView(self);
        
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    }
    
    return self;
}

@end
