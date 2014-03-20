//
//  DRKMainMenuScene.m
//  Dr.K_app
//
//  Created by Edward Li, Ashton Rollins, and Anthony Li on 3/18/14.
//  Copyright (c) 2014 GW STEM Club. All rights reserved.
//

#import "DRKMainMenuScene.h"

@implementation DRKMainMenuScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor blackColor];
        
        SKNode *blocksNode = [SKNode node];
        blocksNode.name = @"blocks";
        blocksNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:blocksNode];
        
        CGRect topRect = CGRectMake(CGRectMinXEdge, CGRectGetMidY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame) / 2);
        
        SKLabelNode *topLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        topLabel.text = @"Schoolhouse";
        topLabel.fontSize = 36;
        topLabel.position = CGPointMake(CGRectGetMidX(topRect), CGRectGetMidY(topRect));
        [self addChild:topLabel];
        
        
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    
    /* */
}

@end
