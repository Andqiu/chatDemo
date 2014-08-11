//
//  KAChatCell.h
//  chatDemo
//
//  Created by test on 14-8-8.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KAChatData.h"

@interface KAChatCell : UITableViewCell

// 头像
@property(nonatomic,weak)IBOutlet UIImageView *icon;

@property(nonatomic,weak)IBOutlet UIView *backView;

@property(nonatomic)KAChatData *data;


+(KAChatCell *)tableView:(UITableView *)tableView data:(KAChatData *)data;

-(void)load:(KAChatData *)data;

+(CGFloat)cellHeight:(KAChatData *)data;

@end
