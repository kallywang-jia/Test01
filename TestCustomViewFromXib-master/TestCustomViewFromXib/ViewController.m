//
//  ViewController.m
//  TestCustomViewFromXib
//
//  Created by Eunice_Wang on 14/11/26.
//  Copyright (c) 2014年 Enuice_Wang. All rights reserved.
//

#import "ViewController.h"
#import "TestCustomView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TestCustomView *testCustomView = [[TestCustomView alloc] initTestCustomViewWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    UITableView *selfTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    selfTableView.layer.borderWidth = 2.0f;
    selfTableView.layer.borderColor = [UIColor greenColor].CGColor;
    selfTableView.delegate = self;
    selfTableView.dataSource = self;
    selfTableView.tableHeaderView = testCustomView;
    [self.view addSubview:selfTableView];
//    [self.view addSubview:testCustomView];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    tableViewCell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return tableViewCell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
