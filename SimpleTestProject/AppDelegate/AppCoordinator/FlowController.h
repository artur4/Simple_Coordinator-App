//
//  FlowController.h
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

@import Foundation;

typedef void(^CompletionHandler)(NSInteger index);

@protocol FlowController <NSObject>

@property (copy, nonatomic) CompletionHandler completionHandler;

@end
