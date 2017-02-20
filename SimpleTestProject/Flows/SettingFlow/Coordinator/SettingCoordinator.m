//
//  SettingCoordinator.m
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import "SettingCoordinator.h"
#import "SettingViewController.h"
#import "DetailSettingViewController.h"

@interface SettingCoordinator () {
    UINavigationController *_navigation;
}

@end

@implementation SettingCoordinator

- (instancetype)initWithNavigationController:(id)navigation {
    self = [super init];
    if (self) {
        _navigation = navigation;
    }
    return self;
}


- (void)start {
    
    [self showSettingController];
}

- (void)showSettingController {
    
    SettingViewController *settingViewController = [[self settingFlowStoryboard] instantiateViewControllerWithIdentifier:NSStringFromClass([SettingViewController class])];
    [_navigation pushViewController:settingViewController animated:NO];
    
    __weak typeof(self) weakSelf = self;
    settingViewController.completionHandler = ^(NSInteger index) {
        [weakSelf showDetailController];
    };
}



- (void)showDetailController {
    
    DetailSettingViewController *detailSettingViewController = [[self settingFlowStoryboard] instantiateViewControllerWithIdentifier:NSStringFromClass([DetailSettingViewController class])];
    detailSettingViewController.hidesBottomBarWhenPushed = YES;
    [_navigation pushViewController:detailSettingViewController animated:YES];
    
    
    //    __weak typeof(self) weakSelf = self;
    detailSettingViewController.completionHandler = ^(NSInteger index) {
        // do something..
    };
    
}

- (UIStoryboard *)settingFlowStoryboard {
    return [UIStoryboard storyboardWithName:@"SettingFlow" bundle:[NSBundle mainBundle]];
}


@end
