//
//  KAChatData.h
//  chatDemo
//
//  Created by test on 14-8-11.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MatchParser.h"

@interface KAChatData : NSObject

@property(nonatomic,strong)NSString *content;

@property(nonatomic,readonly)MatchParser *match;

@end
