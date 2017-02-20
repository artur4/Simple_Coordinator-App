//
//  BaseCoordinator.h
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

@import Foundation;
#import "Coordinator.h"

@interface BaseCoordinator : NSObject <Coordinator>

@property (copy, nonatomic) CoordinatorHandler flowCompletionHandler;
@property (copy, nonatomic) NSMutableArray <Coordinator> *childCoordinators;

- (void)addDependancy:(id <Coordinator>)coordinator;
- (void)removeDependancy:(id <Coordinator>)coordinator;

@end
