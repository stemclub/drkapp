//
//  DRKGameController.m
//  Dr.K_app
//
//  Created by Anthony Li on 3/22/2014.
//  Copyright (c) 2014 GW STEM Club. All rights reserved.
//

#import "DRKGameController.h"

@implementation DRKGameController

- (void)viewDidLoad {
    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = NO;
    skView.showsNodeCount = NO;
    
    // Create and configure the scene.
    SKScene * scene = [DRKTetrisScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    // Start gameplay
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    // Stop gameplay
}

@end
