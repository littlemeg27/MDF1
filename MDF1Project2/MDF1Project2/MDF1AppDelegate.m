//
//  MDF1AppDelegate.m
//  MDF1Project2
//
//  Created by Brenna Pavlinchak on 11/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "MDF1AppDelegate.h"
#import "MDF1ViewController.h"
#import "iPhoneViewController.h"
#import "iPadViewController.h"
#import "MacViewController.h"
#import "UITableTabViewController.h"
#import "DetailViewController.h"
#import "TabThreeViewController.h"

@implementation MDF1AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    MDF1ViewController *viewController = [[MDF1ViewController alloc] initWithNibName:@"MDF1ViewController" bundle:nil]; //This is the child view
    
    UINavigationController *theNavController = [[UINavigationController alloc] initWithRootViewController: viewController]; //This is the nav controller the home page
    
    UIViewController *tableController = [[UITableTabViewController alloc] initWithNibName:@"UITableTabViewController" bundle:nil]; //This is the UI table view
    
    UIViewController *tabThreeController = [[TabThreeViewController alloc] initWithNibName:@"TabThreeViewController" bundle:nil]; //This is the third tab view
    
    self.tabBarController = [[UITabBarController alloc] init]; //Thing for the tabs
    
    self.tabBarController.viewControllers = @[theNavController, tableController, tabThreeController];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
