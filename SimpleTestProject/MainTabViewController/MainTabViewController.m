//
//  MainTabViewController.m
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import "MainTabViewController.h"

@interface MainTabViewController () <UITabBarControllerDelegate>

@end

@implementation MainTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.delegate = self;
    
    id startController = self.customizableViewControllers.firstObject;
    [self.tabBarDelegate startMainCoordinatorWithNavigation:startController];
    self.tabBar.tintColor = [UIColor whiteColor];
}


- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    
    switch (tabBarController.selectedIndex) {
        case 0:
            [self.tabBarDelegate startMainCoordinatorWithNavigation:(id)viewController];
            break;
        case 1:
            [self.tabBarDelegate startSettingCoordinatorWithNavigation:(id)viewController];
            break;
        default:
            break;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
