//
//  ViewController.m
//  Dr.K_app
//
//  Created by Edward Li, Ashton Rollins, and Anthony Li on 3/18/14.
//  Copyright (c) 2014 GW STEM Club. All rights reserved.
//

#import "ViewController.h"
#import "DRKMainMenuScene.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.loadingLabel.hidden = NO;
    self.loadingLabel.alpha = 1.0;

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = NO;
    skView.showsNodeCount = NO;
    
    // Create and configure the scene.
    SKScene * scene = [DRKMainMenuScene sceneWithSize:skView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    self.loadingLabel.hidden = YES;
    
    // Present the scene.
    [skView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end