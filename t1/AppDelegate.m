//
//  AppDelegate.m
//  t1
//
//  Created by Mac on 2019/5/14.
//  Copyright © 2019年 xgxl. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "GTVideoViewController.h"
#import "GTRecommendViewController.h"

@interface AppDelegate ()<UITabBarControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    UITabBarController * tabbarController = [[UITabBarController alloc] init];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:tabbarController];
    
//    navigationController.view.backgroundColor = [UIColor redColor];
//    navigationController.tabBarItem.title = @"新闻";
//    navigationController.tabBarItem.image = [[UIImage imageNamed:@"news.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    navigationController.tabBarItem.selectedImage = [[UIImage imageNamed:@"news_selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    ViewController *newsController = [[ViewController alloc] init];
    GTVideoViewController *videoController = [[GTVideoViewController alloc] init];
    GTRecommendViewController *recommendController = [[GTRecommendViewController alloc] init];
    
    
    UIViewController *controller4 = [[UIViewController alloc] init];
    controller4.view.backgroundColor = [UIColor lightGrayColor];
    controller4.tabBarItem.title = @"我的";
    controller4.tabBarItem.image = [[UIImage imageNamed:@"my.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller4.tabBarItem.selectedImage = [[UIImage imageNamed:@"my_selected.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [tabbarController setViewControllers:@[newsController,videoController,recommendController,controller4]];
    
    tabbarController.delegate = self;
    
    self.window.rootViewController = navigationController;

    [self.window makeKeyAndVisible];

    return YES;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSLog(@"item %@ selected.",tabBarController.tabBar.selectedItem.title);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
