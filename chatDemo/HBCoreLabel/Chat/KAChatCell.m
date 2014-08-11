//
//  KAChatCell.m
//  chatDemo
//
//  Created by test on 14-8-8.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import "KAChatCell.h"
#import "KAChatTextCell.h"

@implementation KAChatCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    CGRect frame = self.backView.frame;
    frame.origin.x= 270 - frame.size.width;
    self.backView.frame=frame;
}

-(void)load:(KAChatData *)data{
    self.data = data;
}

+(KAChatCell *)tableView:(UITableView *)tableView data:(KAChatData *)data{
    
    KAChatTextCell *cell = [[[NSBundle mainBundle]loadNibNamed:@"KAChatText_Right_Cell" owner:self options:nil] firstObject];
    return cell;
}

+(CGFloat)cellHeight:(KAChatData *)data{
    
    return data.match.height + 55;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
