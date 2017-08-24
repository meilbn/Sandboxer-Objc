//
//  ViewController.m
//  Example
//
//  Created by meilbn on 18/07/2017.
//  Copyright © 2017 meilbn. All rights reserved.
//

#import "ViewController.h"
#import "Sandboxer.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Sandboxer";
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSLog(@"Home directory: %@", NSHomeDirectory());
    
    [self initDatas];
    [self setupViews];
}

#pragma mark - Private Methods

- (void)initDatas {
    
}

- (void)setupViews {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor whiteColor];
    [button setTitle:@"Trigger Sandboxer" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(triggerSandboxer) forControlEvents:UIControlEventTouchUpInside];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button];
    
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0];
    [self.view addConstraints:@[centerXConstraint, centerYConstraint]];
}

#pragma mark - Action

- (void)triggerSandboxer {
//    [Sandboxer shared].extensionHidden = YES;
//    [Sandboxer shared].shareable = NO;
    [Sandboxer shared].fileDeletable = YES;
    [Sandboxer shared].directoryDeletable = YES;
//    [Sandboxer shared].homeFileURL = [NSURL fileURLWithPath:[NSHomeDirectory() stringByAppendingPathComponent:@"tmp"]];
    [[Sandboxer shared] trigger];
}

@end
