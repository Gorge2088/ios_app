//
//  ViewController.m
//  t1
//
//  Created by Mac on 2019/5/14.
//  Copyright © 2019年 xgxl. All rights reserved.
//

#import "ViewController.h"
#import "GTNewsViewCell.h"




@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>



@end

@implementation ViewController
- (instancetype)init{
    self = [super init];
    if (self){
        self.view.backgroundColor = [UIColor orangeColor];
        self.tabBarItem.title = @"新闻";
        self.tabBarItem.image = [[UIImage imageNamed:@"news.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.tabBarItem.selectedImage = [[UIImage imageNamed:@"news_selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor greenColor];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:tableView];
    tableView.dataSource = self;
    tableView.delegate = self;
    
    NSLog(@"main view...");
    
    

    
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"scrollViewWillBeginDragging");
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GTNewsViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    if (!cell){
         cell = [[GTNewsViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];

    }
    [cell layoutNewsViewCell];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *controller = [[UIViewController alloc] init];
    controller.title = [NSString stringWithFormat:@"第%@个cell",@(indexPath.row)];
    controller.view.backgroundColor = [UIColor yellowColor];
    [self.navigationController pushViewController:controller animated:YES];
    
    
}


@end
