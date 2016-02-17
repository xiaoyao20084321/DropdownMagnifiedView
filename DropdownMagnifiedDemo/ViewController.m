//
//  ViewController.m
//  daee
//
//  Created by 常超群 on 16/2/4.
//  Copyright © 2016年 常超群. All rights reserved.
//

#import "ViewController.h"
#import "DropdownMagnifiedView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) DropdownMagnifiedView *aView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //先在这里设置headerView,可以不设置.
    [self setupTableHeaderView];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}
- (void)viewDidAppear:(BOOL)animated {
    ///需要在这个地方设置一下.不然会出现headerView盖住前两个cell的问题.
    [self setupTableHeaderView];
}
- (void)setupTableHeaderView {
    self.aView = [[[NSBundle mainBundle] loadNibNamed:@"DropdownMagnifiedView" owner:self options:nil] lastObject];
    self.aView.headerContentView.image = [UIImage imageNamed:@"backImage.jpg"];
    self.tableView.tableHeaderView = self.aView;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [self.aView scrollDidScroll:scrollView];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"cell %ld", (long)indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
