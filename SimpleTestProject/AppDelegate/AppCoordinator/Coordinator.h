//
//  Coordinator.h
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

@import Foundation;

typedef void(^CoordinatorHandler)(NSInteger index);

@protocol Coordinator <NSObject>

@property (copy, nonatomic) CoordinatorHandler flowCompletionHandler;

- (void)start;

@end
