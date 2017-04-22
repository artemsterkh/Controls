//
//  ViewController.m
//  Controls
//
//  Created by Artem Konarev on 01.04.17.
//  Copyright © 2017 it-machine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)onButton2:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(29, 29, 200, 200);
    
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    
    [button addTarget:self action:@selector(onButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (void)onButton:(UIButton *)sender {
    NSLog(@"Button pressed");
}


- (IBAction)onButton2:(UIButton *)sender {
    NSLog(@"Button 2 pressed");
}

@end
