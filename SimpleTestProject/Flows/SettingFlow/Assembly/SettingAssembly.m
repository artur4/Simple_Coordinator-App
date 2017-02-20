//
//  SettingAssembly.m
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import "SettingAssembly.h"
#import "SettingViewController.h"
#import "DetailSettingViewController.h"

@implementation SettingAssembly


- (SettingViewController *)settingViewController {
    return [TyphoonDefinition withClass:[SettingViewController class]];
}


- (DetailSettingViewController *)detailSettingViewController {
    return [TyphoonDefinition withClass:[DetailSettingViewController class]];
}

@end
