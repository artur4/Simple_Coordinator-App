//
//  TabbarFlowOutput.h
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

@import Foundation;
@import UIKit;

@protocol TabbarFlowOutput <NSObject>

- (void)startAuthCoordinatorWithNavigation:(UINavigationController *)navigation;

- (void)startMainCoordinatorWithNavigation:(UINavigationController *)navigation;

- (void)startSettingCoordinatorWithNavigation:(UINavigationController *)navigation;

@end
