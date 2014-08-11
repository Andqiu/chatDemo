//
//  KAChatViewController.m
//  chatDemo
//
//  Created by test on 14-8-8.
//  Copyright (c) 2014年 kanon. All rights reserved.
//

#import "KAChatViewController.h"
#import "KAChatCell.h"
#import "HBCoreLabel.h"
#import "MatchParser.h"

@interface KAChatViewController ()
{
    KAChatToolBar *_toolBar;
}
@end

@implementation KAChatViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _chatArr = [NSMutableArray array];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUp];
}

-(void)setUp{
    
    _chatView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _chatView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _chatView.delegate = self;
    _chatView.dataSource = self;
    [self.view addSubview:_chatView];
    
    _toolBar = [[[NSBundle mainBundle]loadNibNamed:@"KAChatToolBar" owner:self options:nil] firstObject];
    CGRect rect = _toolBar.frame;
    rect.origin.y = self.view.frame.size.height - rect.size.height;
    _toolBar.frame  = rect;
    _toolBar.sendTextDelegate = self;
    [self.view addSubview:_toolBar];

}

#pragma mark - tableview 

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _chatArr.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CGFloat a = 0;
    if (_chatArr.count > 0) {
       a =  [KAChatCell cellHeight:_chatArr[indexPath.row]];
        
    }
    return a;

}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    KAChatCell *cell = [KAChatCell tableView:tableView data:nil];

    if (_chatArr.count > 0) {
        [cell load:_chatArr[indexPath.row]];

    }
    return cell;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    [_toolBar.textField resignFirstResponder];
}

-(void)sendText:(NSString *)text{
    
    KAChatData *data = [[KAChatData alloc] init];
    data.content = text;
    [_chatArr addObject:data];
    [_chatView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
