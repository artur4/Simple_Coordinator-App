//
//  RegisterViewController.m
//  SimpleTestProject
//
//  Created by Artur on 20.02.17.
//  Copyright © 2017 Artur. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController
@synthesize completionHandler;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"alloc %@", NSStringFromClass([self class]));
}


- (IBAction)close:(id)sender {
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
        self.completionHandler(0);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    NSLog(@"dealloc %@", NSStringFromClass([self class]));
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
