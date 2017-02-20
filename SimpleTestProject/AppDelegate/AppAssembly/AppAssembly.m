//
//  AppAssembly.m
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import "AppAssembly.h"
#import "AppDelegate.h"

@implementation AppAssembly

- (AppDelegate *)appDelegate {
    return [TyphoonDefinition withClass:[AppDelegate class] configuration:^(TyphoonDefinition *definition)
            {
                [definition injectProperty:@selector(appCoordinator) with:[self appCoordinator]];
            }];
}


- (id <AppCoordinatorDelegate>)appCoordinator {
    return [TyphoonDefinition withClass:[AppCoordinator class]];
}

@end
