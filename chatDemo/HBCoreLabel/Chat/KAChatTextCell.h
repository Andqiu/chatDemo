//
//  KAChatTextCell.h
//  chatDemo
//
//  Created by test on 14-8-8.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import "KAChatCell.h"
#import "HBCoreLabel.h"

@interface KAChatTextCell : KAChatCell

@property(nonatomic,weak)IBOutlet HBCoreLabel * content;
@property(nonatomic,strong) HBCoreLabel * content1;
@property(nonatomic)MatchParser * match;

@end
