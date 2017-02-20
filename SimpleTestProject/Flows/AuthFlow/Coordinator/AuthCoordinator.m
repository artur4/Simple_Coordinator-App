//
//  AuthCoordinator.m
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import "AuthCoordinator.h"
#import "LoginViewController.h"
#import "RegisterViewController.h"

@interface AuthCoordinator () {
    UINavigationController *_navigation;
}

@end

@implementation AuthCoordinator
@synthesize flowCompletionHandler;

- (instancetype)initWithNavigationController:(id)navigation {
    self = [super init];
    if (self) {
        _navigation = navigation;
    }
    return self;
}


- (void)start {
    
    [self showLoginController];
}

- (void)showLoginController {
    
    LoginViewController *loginViewController = [[self authFlowStoryboard] instantiateViewControllerWithIdentifier:NSStringFromClass([LoginViewController class])];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:loginViewController];
    [_navigation presentViewController:navController animated:YES completion: nil];
    
    __weak UINavigationController *weakNavigationController = navController;
    __weak typeof(self) weakSelf = self;
    loginViewController.completionHandler = ^(NSInteger index) {
        if (index == 0) {
            weakSelf.flowCompletionHandler(0);
        } else {
            [weakSelf showRegControllerWithNavigationController:weakNavigationController];
        }
    };
}

- (void)showRegControllerWithNavigationController:(UINavigationController *)navigationController {
    
    RegisterViewController *registerViewController = [[self authFlowStoryboard] instantiateViewControllerWithIdentifier:NSStringFromClass([RegisterViewController class])];
    [navigationController pushViewController:registerViewController animated:YES];
    
    __weak typeof(self) weakSelf = self;
    registerViewController.completionHandler = ^(NSInteger index) {
        
        weakSelf.flowCompletionHandler(0);
    };
}


- (void)dealloc {
    NSLog(@"dealloc %@", NSStringFromClass([self class]));
}

- (UIStoryboard *)authFlowStoryboard {
    return [UIStoryboard storyboardWithName:@"AuthFlow" bundle:[NSBundle mainBundle]];
}


@end
