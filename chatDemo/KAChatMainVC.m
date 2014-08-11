//
//  KAChatMainVC.m
//  chatDemo
//
//  Created by test on 14-8-8.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import "KAChatMainVC.h"
#import "KAChatViewController.h"

@interface KAChatMainVC ()

@end

@implementation KAChatMainVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    KAChatViewController *  chatview = [[KAChatViewController alloc] init];
    [self addChildViewController:chatview];
    [self.view addSubview:chatview.view];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
