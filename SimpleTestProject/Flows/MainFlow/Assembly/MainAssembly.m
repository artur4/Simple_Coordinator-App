//
//  MainAssembly.m
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import "MainAssembly.h"
#import "MainViewController.h"
#import "DetailViewController.h"

@implementation MainAssembly

- (MainViewController *)mainViewController {
    return [TyphoonDefinition withClass:[MainViewController class]];
}

- (DetailViewController *)detailViewController {
    return [TyphoonDefinition withClass:[DetailViewController class]];
}


@end
