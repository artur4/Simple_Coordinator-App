//
//  AppCoordinator.m
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import "AppCoordinator.h"
#import "MainTabViewController.h"

#import "MainCoordinator.h"
#import "AuthCoordinator.h"
#import "SettingCoordinator.h"

@interface AppCoordinator () {
    MainTabViewController *_tabBarController;
}

@end

@implementation AppCoordinator
@synthesize rootViewController, tabBarController;

#pragma mark - AppCoordinatorDelegate

- (void)firstStart {
    
    self.tabBarController = self.rootViewController;
    self.tabBarController.tabBarDelegate = self;
    
    
    // auth flow start
    dispatch_async(dispatch_get_main_queue(), ^{
        UINavigationController *startController = self.tabBarController.customizableViewControllers.firstObject;
        [self startAuthCoordinatorWithNavigation:startController];
    });
}


#pragma mark - TabbarFlowOutput

- (void)startAuthCoordinatorWithNavigation:(UINavigationController *)navigation {
    
    AuthCoordinator *authCoordinator = [[AuthCoordinator alloc] initWithNavigationController:navigation];
    [self addDependancy:authCoordinator];
    [authCoordinator start];
    
    __weak AuthCoordinator *weakAuthCoordinator = authCoordinator;
    __weak typeof(self) weakSelf = self;
    authCoordinator.flowCompletionHandler = ^(NSInteger index) {
        [weakSelf removeDependancy:weakAuthCoordinator];
    };
}

- (void)startMainCoordinatorWithNavigation:(UINavigationController *)navigation {
    
    if (navigation.viewControllers.count == 0) {
        MainCoordinator *mainCoordinator = [[MainCoordinator alloc] initWithNavigationController:navigation];
        [self addDependancy:mainCoordinator];
        [mainCoordinator start];
    }
}

- (void)startSettingCoordinatorWithNavigation:(UINavigationController *)navigation {
    
    if (navigation.viewControllers.count == 0) {
        SettingCoordinator *settingCoordinator = [[SettingCoordinator alloc] initWithNavigationController:navigation];
        [self addDependancy:settingCoordinator];
        [settingCoordinator start];
    }
}





@end
