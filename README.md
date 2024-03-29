# 从0开发一款IOS APP

[源码](https://github.com/geektime-geekbang/geektime-ios-course)：<https://github.com/geektime-geekbang/geektime-ios-course>

[我的Github](https://github.com/zx490336534/SampleApp)：https://github.com/zx490336534/SampleApp

![广告](https://ws4.sinaimg.cn/large/006tNc79ly1g25wj1q3r3j30u01hdkjl.jpg)

# 第一天

## 创建第一个Xcode工程

![创建1](https://ws2.sinaimg.cn/large/006tNc79ly1g25thtb4kuj318k0q4dq0.jpg)

![创建2](https://ws2.sinaimg.cn/large/006tNc79ly1g25tj3h43hj314k0t8gtl.jpg)

![创建3](https://ws1.sinaimg.cn/large/006tNc79ly1g25tk8f3dwj314k0t8dms.jpg)

### Hello world

`viewController.m`文件：

```objective-c
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

### 创建一个坐标宽高都为100的红色方块

```objective-c
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    view.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:view];
    
}


@end
```

![红色方框](https://ws4.sinaimg.cn/large/006tNc79ly1g25ua6n4dij30ni1akdh2.jpg)

### 创建一个有重叠的绿色方块

```objective-c
#import "ViewController.h"
@interface ViewController ()
@end
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    view.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:view];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor greenColor];
    view2.frame = CGRectMake(150, 150, 100, 100);
    [self.view addSubview:view2];
    
}
@end
```

`view2`在`view`之后创建，所以view2在view`上方`

![绿色方块](https://ws1.sinaimg.cn/large/006tNc79ly1g25ucgonfdj30ni1akwfp.jpg)

### UIview的生命周期

#### 创建一个自己的TestView，继承于UIView

```objective-c
@interface TestView : UIView // 创建一个自己的TestView，继承于UIView
@end

@implementation TestView
- (instancetype)init{
    self = [super init];
    if (self) {
    }
    return self;
}
- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
    [super willMoveToSuperview:newSuperview];
}
- (void)didMoveToSuperview{
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
    [super willMoveToWindow:newWindow];
}
- (void)didMoveToWindow{
    [super didMoveToWindow];
}
@end
```

#### 断点调试

![断点调试](https://ws3.sinaimg.cn/large/006tNc79ly1g25unu9oyaj30v40u0do7.jpg)

实例化的时候使用`TestView`：TestView *view2 = [[TestView alloc] init];

### ViewController的生命周期

- init
- viewDidLoad
- viewWillAppear
- viewDidAppear
- viewWillDisappear
- viewDidDisappear
- Dealloc

## 实现TabBar页面

`AppDelegate.m`文件：

```objective-c

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    UIViewController *controller1 =[[UIViewController alloc]init];
    controller1.view.backgroundColor = [UIColor redColor];
    UIViewController *controller2 =[[UIViewController alloc]init];
    controller2.view.backgroundColor = [UIColor yellowColor];
    UIViewController *controller3 =[[UIViewController alloc]init];
    controller3.view.backgroundColor = [UIColor greenColor];
    UIViewController *controller4 =[[UIViewController alloc]init];
    controller4.view.backgroundColor = [UIColor lightGrayColor];
    [tabbarController setViewControllers:@[controller1,controller2,controller3,controller4]];
    self.window.rootViewController = tabbarController;
    [self.window makeKeyAndVisible];
    return YES;
}
```

点击不同位置颜色不同

![TabBar](https://ws3.sinaimg.cn/large/006tNc79ly1g25vk04dl3j30ni1akjsp.jpg)

#### 增加标题

```objective-c
UIViewController *controller1 =[[UIViewController alloc]init];
controller1.view.backgroundColor = [UIColor redColor];
controller1.tabBarItem.title=@"新闻";
    
UIViewController *controller2 =[[UIViewController alloc]init];
controller2.view.backgroundColor = [UIColor yellowColor];
controller2.tabBarItem.title=@"视频";
    
UIViewController *controller3 =[[UIViewController alloc]init];
controller3.view.backgroundColor = [UIColor greenColor];
controller3.tabBarItem.title=@"推荐";
    
UIViewController *controller4 =[[UIViewController alloc]init];
controller4.view.backgroundColor = [UIColor lightGrayColor];
controller4.tabBarItem.title=@"我的";
```

![增加标题](https://ws3.sinaimg.cn/large/006tNc79ly1g25vmhymirj30ni1akjst.jpg)

#### 增加图片

```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    UIViewController *controller1 =[[UIViewController alloc]init];
    controller1.view.backgroundColor = [UIColor redColor];
    controller1.tabBarItem.title=@"新闻";
    controller1.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/page@2x.png"];
    controller1.tabBarItem.selectedImage = [UIImage imageNamed:@"ico.bundle/page_selected@2x.png"];
    
    UIViewController *controller2 =[[UIViewController alloc]init];
    controller2.view.backgroundColor = [UIColor yellowColor];
    controller2.tabBarItem.title=@"视频";
    controller2.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
    controller2.tabBarItem.selectedImage = [UIImage imageNamed:@"ico.bundle/video_selected@2x.png"];
    
    UIViewController *controller3 =[[UIViewController alloc]init];
    controller3.view.backgroundColor = [UIColor greenColor];
    controller3.tabBarItem.title=@"推荐";
    controller3.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/like@2x.png"];
    controller3.tabBarItem.selectedImage = [UIImage imageNamed:@"ico.bundle/like_selected@2x.png"];
    
    UIViewController *controller4 =[[UIViewController alloc]init];
    controller4.view.backgroundColor = [UIColor lightGrayColor];
    controller4.tabBarItem.title=@"我的";
    controller4.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/home@2x.png"];
    controller4.tabBarItem.selectedImage = [UIImage imageNamed:@"ico.bundle/home_selected@2x.png"];
    
    [tabbarController setViewControllers:@[controller1,controller2,controller3,controller4]];
    self.window.rootViewController = tabbarController;
    [self.window makeKeyAndVisible];
    return YES;
}
```

![Tab图片](https://ws4.sinaimg.cn/large/006tNc79ly1g25w81hbj3j30ni1ak75w.jpg)

# 第二天

### 使用UINavigationController管理页面

1. 通过栈管理`页面间`的跳转
2. 通常只展示栈顶页面
3. Push/Pop操作

先导入h文件：#import "ViewController.h"

```objective-c
#import "ViewController.h"
ViewController *viewController = [[ViewController alloc]init];
    
UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
//    UIViewController *controller1 =[[UIViewController alloc]init];
//    controller1.view.backgroundColor = [UIColor redColor];
navigationController.tabBarItem.title=@"新闻";
navigationController.tabBarItem.image = [UIImage imageNamed:@"icon.bundle/page@2x.png"];
navigationController.tabBarItem.selectedImage = [UIImage imageNamed:@"ico.bundle/page_selected@2x.png"];

[tabbarController setViewControllers:@[navigationController,controller2,controller3,controller4]];
```

![新闻页面修改](https://ws3.sinaimg.cn/large/006tNc79ly1g25xaccy34j30ni1akwg1.jpg)

#### 操作新闻页面

`viewController.m`中添加一个手势

```objective-c
UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pushController)];
    [view2 addGestureRecognizer:tapGesture];
```

创建该手势对应的方法`pushController`：

```objective-c
- (void)pushController{
    [self.navigationController pushViewController:[[UIViewController alloc]init] animated:YES];
}
```

可以看到`Back`

![点击绿色的方框后的页面](https://ws3.sinaimg.cn/large/006tNc79ly1g25xk6z2k1j30ni1akabo.jpg)

#### 将跳转页面改为白色，增加标题

修改函数

```objective-c
- (void)pushController{
    UIViewController *viewcontroller = [[UIViewController alloc]init];
    viewcontroller.view.backgroundColor = [UIColor whiteColor];
    viewcontroller.navigationItem.title = @"内容";
    
    [self.navigationController pushViewController:viewcontroller animated:YES];
}
```

![新跳转的页面](https://ws1.sinaimg.cn/large/006tNc79ly1g25xp3x4ljj30ni1aktag.jpg)

#### 增加右侧标题

```objective-c
viewcontroller.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithTitle:@"右侧标题" style:UIBarButtonItemStylePlain target:self action:nil];
```

![增加右侧标题](https://ws4.sinaimg.cn/large/006tNc79ly1g25xrgd24rj30mc1a0tat.jpg)

# 第三天

切换页面的时候隐藏掉下面的导航栏

![隐藏的效果](http://ww3.sinaimg.cn/large/006tNc79ly1g4ex1yk8bfj30tq1gs47d.jpg)

