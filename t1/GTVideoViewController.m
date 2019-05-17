//
//  GTVideoViewController.m
//  t1
//
//  Created by Mac on 2019/5/15.
//  Copyright © 2019年 xgxl. All rights reserved.
//

#import "GTVideoViewController.h"

@interface GTVideoViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation GTVideoViewController
- (instancetype)init{
    self = [super init];
    if (self){
        self.tabBarItem.title = @"视频";
        self.view.backgroundColor = [UIColor whiteColor];
        self.tabBarItem.image = [[UIImage imageNamed:@"video.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.tabBarItem.selectedImage = [[UIImage imageNamed:@"video_selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UICollectionViewFlowLayout  *followLayout = [[UICollectionViewFlowLayout alloc] init];
    
    followLayout.minimumLineSpacing = 10;
    followLayout.minimumInteritemSpacing = 10;
    followLayout.itemSize = CGSizeMake((self.view.frame.size.width - 10)/2, 300);
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout: followLayout];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    collectionView.backgroundColor = [UIColor whiteColor];
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"collectionCell"];
    [self.view addSubview:collectionView];
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 200;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"collectionCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    
//    if (!cell){
//        cell = [UICollectionViewCell alloc] ini
//    }
    
    return  cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"hhhhhhh");
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if ( indexPath.item %3 == 0){
        return CGSizeMake(self.view.frame.size.width, 100);
    }else{
        return CGSizeMake((self.view.frame.size.width - 10)/2, 300);
    }
}

@end
