# 从0开发一款IOS APP

[源码](https://github.com/geektime-geekbang/geektime-ios-course)：<https://github.com/geektime-geekbang/geektime-ios-course>

## 创建第一个Xcode工程

![创建1](https://ws2.sinaimg.cn/large/006tNc79ly1g25thtb4kuj318k0q4dq0.jpg)

![创建2](https://ws2.sinaimg.cn/large/006tNc79ly1g25tj3h43hj314k0t8gtl.jpg)

![创建3](https://ws1.sinaimg.cn/large/006tNc79ly1g25tk8f3dwj314k0t8dms.jpg)

### Hello world

`viewController.m`文件：

```objective-c
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
```

![Hello World](https://ws1.sinaimg.cn/large/006tNc79ly1g25tvktndzj30ni1akwfu.jpg)