//
//  ViewController.m
//  SwiftPlayByPlay
//
//  Created by Nirmala Jayaraman on 2/18/18.
//  Copyright © 2018 Nirmala Jayaraman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    screen(onGuestList: true, person: "Mary")
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
