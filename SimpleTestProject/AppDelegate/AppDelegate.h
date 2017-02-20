//
//  AppDelegate.h
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

@import UIKit;
#import "AppCoordinator.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) id <AppCoordinatorDelegate> appCoordinator;


@end

