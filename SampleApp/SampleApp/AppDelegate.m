//
//  AppDelegate.m
//  SampleApp
//
//  Created by 钟鑫 on 2019/4/17.
//  Copyright © 2019 钟鑫. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    UIViewController *controller1 =[[UIViewController alloc]init];
    controller1.view.backgroundColor = [UIColor redColor];
    controller1.tabBarItem.title=@"新闻";
    controller1.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/page@2x.png"];
    controller1.tabBarItem.selectedImage = [UIImage imageNamed:@"ico.bundle/page_selected@2x.png"];
    
    UIViewController *controller2 =[[UIViewController alloc]init];
    controller2.view.backgroundColor = [UIColor yellowColor];
    controller2.tabBarItem.title=@"视频";
    controller2.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
    controller2.tabBarItem.selectedImage = [UIImage imageNamed:@"ico.bundle/video_selected@2x.png"];
    
    UIViewController *controller3 =[[UIViewController alloc]init];
    controller3.view.backgroundColor = [UIColor greenColor];
    controller3.tabBarItem.title=@"推荐";
    controller3.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x.png"];
    controller3.tabBarItem.selectedImage = [UIImage imageNamed:@"ico.bundle/like_selected@2x.png"];
    
    UIViewController *controller4 =[[UIViewController alloc]init];
    controller4.view.backgroundColor = [UIColor lightGrayColor];
    controller4.tabBarItem.title=@"我的";
    controller4.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/home@2x.png"];
    controller4.tabBarItem.selectedImage = [UIImage imageNamed:@"ico.bundle/home_selected@2x.png"];
    
    [tabbarController setViewControllers:@[controller1,controller2,controller3,controller4]];
    self.window.rootViewController = tabbarController;
    [self.window makeKeyAndVisible];
    return YES;
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
