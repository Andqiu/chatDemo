//
//  KAChatToolBar.m
//  chatDemo
//
//  Created by test on 14-8-8.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import "KAChatToolBar.h"

@implementation KAChatToolBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        

    }
    return self;
}

-(void)awakeFromNib{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardAppearance:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDismissMode:) name:UIKeyboardWillHideNotification object:nil];
}

-(void)keyboardAppearance:(NSNotification *)noti{
    
    NSDictionary* info = [noti userInfo];
    CGSize kbSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;//得到鍵盤的高度
    
    CGRect rect = [UIScreen mainScreen].bounds;
    
    CGRect rect1 = self.frame;
    rect1.origin.y = rect.size.height - kbSize.height - rect1.size.height;
    self.frame = rect1;
}

-(void)keyboardDismissMode:(NSNotification *)noti{
    
    CGRect rect = [UIScreen mainScreen].bounds;
    
    CGRect rect1 = self.frame;
    rect1.origin.y = rect.size.height - self.frame.size.height;
    self.frame = rect1;
}
- (IBAction)sendText:(id)sender {
    if (_sendTextDelegate && [_sendTextDelegate respondsToSelector:@selector(sendText:)]) {
        [_sendTextDelegate sendText:_textField.text];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
