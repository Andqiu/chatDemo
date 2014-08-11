//
//  KAChatTextCell.m
//  chatDemo
//
//  Created by test on 14-8-8.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import "KAChatTextCell.h"

@implementation KAChatTextCell

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

}

-(void)load:(KAChatData *)data{
 
    [super load:data];
    _content.match = self.data.match;

    CGRect frame = self.backView.frame;
    frame.size.width= self.data.match.miniWidth+30;
    self.backView.frame=frame;
    
    [self setNeedsLayout];
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
