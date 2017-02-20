//
//  MainCoordinator.m
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import "MainCoordinator.h"
#import "MainViewController.h"
#import "DetailViewController.h"

@interface MainCoordinator () {
    UINavigationController *_navigation;
}

@end

@implementation MainCoordinator

- (instancetype)initWithNavigationController:(id)navigation {
    self = [super init];
    if (self) {
        _navigation = navigation;
    }
    return self;
}


- (void)start {
    
    [self showMainController];
}

- (void)showMainController {
    
    MainViewController *mainViewController = [[self mainFlowStoryboard] instantiateViewControllerWithIdentifier:NSStringFromClass([MainViewController class])];
    [_navigation pushViewController:mainViewController animated:NO];
    
    __weak typeof(self) weakSelf = self;
    mainViewController.completionHandler = ^(NSInteger index) {
        [weakSelf showDetailController];
    };
}


- (void)showDetailController {
    
    DetailViewController *detailViewController = [[self mainFlowStoryboard] instantiateViewControllerWithIdentifier:NSStringFromClass([DetailViewController class])];
    [_navigation pushViewController:detailViewController animated:YES];
    
//    __weak typeof(self) weakSelf = self;
    detailViewController.completionHandler = ^(NSInteger index) {
        // do something..
    };
    
}



- (UIStoryboard *)mainFlowStoryboard {
    return [UIStoryboard storyboardWithName:@"MainFlow" bundle:[NSBundle mainBundle]];
}



@end
