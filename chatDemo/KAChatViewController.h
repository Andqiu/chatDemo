//
//  KAChatViewController.h
//  chatDemo
//
//  Created by test on 14-8-8.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KAChatToolBar.h"

@interface KAChatViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,ToolBarSendTextDelegate>

@property(nonatomic,strong,readonly)UITableView * chatView;
@property(nonatomic)NSMutableArray *chatArr;

@end
