//
//  KAChatToolBar.h
//  chatDemo
//
//  Created by test on 14-8-8.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ToolBarSendTextDelegate <NSObject>

-(void)sendText:(NSString *)text;

@end

@interface KAChatToolBar : UIToolbar
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *sendBtn;
@property(nonatomic,assign)id<ToolBarSendTextDelegate>sendTextDelegate;

@end
