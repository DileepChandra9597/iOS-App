//
//  APXViewController1.m
//  Dileep iOS TestApp
//
//  Created by Dileep on 10/10/23.
//

#import "APXViewController1.h"

@interface APXViewController1 ()

@property (nonatomic, strong) UIButton *button1;
@property (nonatomic, strong) UIButton *button2;

@end

@implementation APXViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    self.button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [self.button1 setTitle:@"Movies" forState:UIControlStateNormal];
    [self.button2 setTitle:@"TV Series" forState:UIControlStateNormal];
    
    [self.button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    self.button1.translatesAutoresizingMaskIntoConstraints = NO;
    self.button2.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.button1.backgroundColor = [UIColor grayColor];
    self.button2.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:self.button1];
    [self.view addSubview:self.button2];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.button1.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:200],
        [self.button1.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.button1.widthAnchor constraintEqualToConstant:200],
        [self.button1.heightAnchor constraintEqualToConstant:50],
        
        [self.button2.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:300],
        [self.button2.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.button2.widthAnchor constraintEqualToConstant:200],
        [self.button2.heightAnchor constraintEqualToConstant:50]
    ]];
    
    self.button1.layer.borderWidth = 0.8;
    self.button1.layer.borderColor = [[UIColor blackColor] CGColor];
    self.button1.layer.cornerRadius = 10;
    [self.button1 addTarget:self action:@selector(button1Clicked) forControlEvents:UIControlEventTouchUpInside];
    
    self.button2.layer.borderWidth = 0.8;
    self.button2.layer.borderColor = [[UIColor blackColor] CGColor];
    self.button2.layer.cornerRadius = 10;
    [self.button2 addTarget:self action:@selector(button2Clicked) forControlEvents:UIControlEventTouchUpInside];
}

-(void) button1Clicked{
    
    if(self.tabBarController){
        self.tabBarController.selectedIndex = 1;
    }
}

-(void) button2Clicked{
    
    if(self.tabBarController){
        self.tabBarController.selectedIndex = 2;
    }
}
 
@end
