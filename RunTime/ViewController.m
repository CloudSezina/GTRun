//
//  ViewController.m
//  RunTime
//
//  Created by MING on 2017/7/21.
//  Copyright © 2017年 MING. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    //调用打电话功能
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://10086"] options:nil completionHandler:^(BOOL success) {
        
        NSLog(@"call   ");
        
    }];
    
    
    //调用发短信功能
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms://10000"] options:nil completionHandler:^(BOOL success) {
        
        NSLog(@"call   ");
        
    }];
    
    
    
    
    
//    Person *p1 = [[Person alloc] init];
//    
//    p1.name = @"333";
//    objc_msgSend(p1,@selector(eat));
//    
//
//    
//    
//    NSLog(@"name is  %@",[p1 valueForKey:@"_name"]);
//    
//    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com/中文"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    
//    NSLog(@"______ %@",request);
    

}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
    
    
    NSLog(@"finfish  ");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
