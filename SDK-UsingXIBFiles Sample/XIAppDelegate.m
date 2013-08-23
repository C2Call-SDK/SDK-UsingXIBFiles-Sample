//
//  XIAppDelegate.m
//  SDK-UsingXIBFiles Sample
//
//  Created by Michael Knecht on 01.08.13.
//  Copyright (c) 2013 C2Call GmbH. All rights reserved.
//

#import "XIAppDelegate.h"

#import "XIFirstViewController.h"

#import "XISecondViewController.h"

@implementation XIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Demo User : XIB1@gmail.com / Password : 123456
    
    self.affiliateid = @"1F3E9213F51427D53";
    self.secret = @"6fb68209c4a59e1268259006ac404b3d";
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    UIViewController *viewController1 = [[XIFirstViewController alloc] initWithNibName:@"XIFirstViewController" bundle:nil];
    UIViewController *viewController2 = [[XISecondViewController alloc] initWithNibName:@"XISecondViewController" bundle:nil];
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[viewController1, viewController2];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];

    // Load my custom storyboard
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MyStoryboard" bundle:nil];

    self.customStoryboard = sb;
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    [super applicationWillResignActive:application];
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [super applicationDidEnterBackground:application];
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [super applicationWillEnterForeground:application];
    
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [super applicationDidBecomeActive:application];
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [super applicationWillTerminate:application];
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

-(void) showLaunchScreen
{
    SCLaunchScreenController *vc = [self instantiateViewControllerWithIdentifier:@"SCLaunchScreenController"];
    
    vc.modalPresentationStyle = UIModalTransitionStyleCrossDissolve;
    
    [self.mainScreenController presentViewController:vc animated:YES completion:NULL];
}

@end
