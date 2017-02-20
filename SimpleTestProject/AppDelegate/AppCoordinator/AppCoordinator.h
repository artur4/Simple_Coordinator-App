//
//  AppCoordinator.h
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

@import Foundation;
#import "BaseCoordinator.h"
#import "TabbarFlowOutput.h"
@class MainTabViewController;

@protocol AppCoordinatorDelegate <NSObject>

@property (strong, nonatomic) id rootViewController;

@property (strong, nonatomic) MainTabViewController *tabBarController;

- (void)firstStart;

@end

@interface AppCoordinator : BaseCoordinator <TabbarFlowOutput, AppCoordinatorDelegate>

@end
