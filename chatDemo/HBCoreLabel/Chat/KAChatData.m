//
//  KAChatData.m
//  chatDemo
//
//  Created by test on 14-8-11.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import "KAChatData.h"

@implementation KAChatData

-(void)podMatch:(NSString *)content{
    
    MatchParser * match=[[MatchParser alloc]init];
    match.textColor = [UIColor whiteColor];
    match.width = 200;
    [match match:content];
    match.numberOfLimitLines = 0;
    _match = match;
}

-(void)setContent:(NSString *)content{
    _content = content;
    [self podMatch:_content];

}

@end
