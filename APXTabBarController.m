//
//  APXTabBarController.m
//  Dileep iOS TestApp
//
//  Created by Dileep on 10/10/23.
//

#import "APXTabBarController.h"
#import "APXViewController1.h"
#import "APXViewController2.h"
#import "APXViewController3.h"


@interface APXTabBarController  ()

@end

@implementation APXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.delegate = self;
    
    APXViewController1 *viewController1 = [[APXViewController1 alloc] init];
    viewController1.view.backgroundColor = [UIColor whiteColor];
    APXViewController2 *viewController2 = [[APXViewController2 alloc] init];
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:viewController2];
    viewController2.view.backgroundColor = [UIColor whiteColor];
    APXViewController3 *viewController3 = [[APXViewController3 alloc] init];
    UINavigationController *navVC2 = [[UINavigationController alloc] initWithRootViewController:viewController3];
    viewController3.view.backgroundColor = [UIColor whiteColor];
    
    UITabBarItem *icon1 = [[UITabBarItem alloc] initWithTitle:@"Ent." image:[UIImage systemImageNamed:@"popcorn"] tag:7];
    UITabBarItem *icon2 = [[UITabBarItem alloc] initWithTitle:@"Movies" image:[UIImage systemImageNamed:@"movieclapper"] tag:8];
    UITabBarItem *icon3 = [[UITabBarItem alloc] initWithTitle:@"Series" image:[UIImage systemImageNamed:@"tv"] tag:9];
    
    viewController1.tabBarItem = icon1;
    viewController2.tabBarItem = icon2;
    viewController3.tabBarItem = icon3;
    
    NSArray *controllers = @[viewController1,navVC,navVC2];
    self.viewControllers = controllers;
    
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
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
