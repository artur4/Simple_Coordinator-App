//
//  AuthAssembly.m
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import "AuthAssembly.h"
#import "LoginViewController.h"
#import "RegisterViewController.h"

@implementation AuthAssembly


- (LoginViewController *)loginViewController {
    return [TyphoonDefinition withClass:[LoginViewController class]];
}


- (RegisterViewController *)registerViewController {
    return [TyphoonDefinition withClass:[RegisterViewController class]];
}

@end
