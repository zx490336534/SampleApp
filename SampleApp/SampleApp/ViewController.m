//
//  ViewController.m
//  SampleApp
//
//  Created by 钟鑫 on 2019/4/17.
//  Copyright © 2019 钟鑫. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:({
        UILabel *label = [[UILabel alloc] init];
        label.text = @"hello wolrd";
        [label sizeToFit];
        label.center = CGPointMake(self.view.frame.size.width/2,self.view.frame.size.height/2);
        label;
    })];
}


@end
