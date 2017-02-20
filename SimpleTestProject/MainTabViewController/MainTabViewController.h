//
//  MainTabViewController.h
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabbarFlowOutput.h"

@interface MainTabViewController : UITabBarController

@property (weak, nonatomic) id <TabbarFlowOutput> tabBarDelegate;

@end
