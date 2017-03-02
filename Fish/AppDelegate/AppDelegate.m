//
//  AppDelegate.m
//  Fish
//
//  Created by Dale on 17/3/2.
//  Copyright © 2017年 Nari. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseTabBarController.h"
#import "BaseNavigationController.h"
#import "HomePageViewController.h"
#import "PodViewController.h"
#import "NewsViewController.h"
#import "SetViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [self createTabBarVC];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (UIViewController *)createTabBarVC {
    HomePageViewController *homePageVC = [[HomePageViewController alloc] init];
    homePageVC.title = @"主页";
    BaseNavigationController *homePageNV = [[BaseNavigationController alloc] initWithRootViewController:homePageVC];
    PodViewController *podVC = [[PodViewController alloc] init];
    podVC.title = @"塘口";
    BaseNavigationController *podNV = [[BaseNavigationController alloc] initWithRootViewController:podVC];
    
    NewsViewController *newsVC = [[NewsViewController alloc] init];
    newsVC.title = @"资讯";
    BaseNavigationController *newsNV = [[BaseNavigationController alloc] initWithRootViewController:newsVC];
    
    SetViewController *setVC = [[SetViewController alloc] init];
    setVC.title = @"设置";
    BaseNavigationController *setNV = [[BaseNavigationController alloc] initWithRootViewController:setVC];
    
    BaseTabBarController *baseVC = [[BaseTabBarController alloc] init];
    baseVC.viewControllers = @[homePageNV, podNV, newsNV, setNV];
    return baseVC;
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
