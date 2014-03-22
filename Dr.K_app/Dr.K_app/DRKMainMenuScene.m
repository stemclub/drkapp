//
//  DRKMainMenuScene.m
//  Dr.K_app
//
//  Created by Edward Li, Ashton Rollins, and Anthony Li on 3/18/14.
//  Copyright (c) 2014 GW STEM Club. All rights reserved.
//

#import "DRKMainMenuScene.h"
#import "DRKButtonNode.h"

@implementation DRKMainMenuScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor blackColor];
        
        // Setup the nodes
        
        SKNode *blocksNode = [SKNode node];
        blocksNode.name = @"blocks";
        blocksNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:blocksNode];
        
        CGRect topRect = CGRectMake(CGRectMinXEdge, CGRectGetMidY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame) / 2);
        
        SKLabelNode *topLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        topLabel.name = @"topTitle";
        topLabel.fontColor = [SKColor whiteColor];
        topLabel.text = @"Schoolhouse";
        topLabel.fontSize = 36;
        topLabel.position = CGPointMake(CGRectGetMidX(topRect), CGRectGetMidY(topRect));
        topLabel.alpha = 0;
        [self addChild:topLabel];
        
        SKLabelNode *bottomLabel = [SKLabelNode labelNodeWithFontNamed:@"Menlo"];
        bottomLabel.name = @"bottomTitle";
        bottomLabel.fontColor = [SKColor yellowColor];
        bottomLabel.text = @"TETRIS";
        bottomLabel.fontSize = 48;
        bottomLabel.position = CGPointMake(CGRectGetMidX(topRect), CGRectGetMidY(topRect) - (CGRectGetHeight(topLabel.frame) + 24));
        bottomLabel.alpha = 0;
        [self addChild:bottomLabel];
        
        DRKButtonNode *button = [[DRKButtonNode alloc] initWithTexture:[SKTexture textureWithImageNamed:@"Locker_square_blue.png"] color:[UIColor whiteColor] size:CGSizeMake(20, 20)];
        button.target = self;
        button.selector = @selector(test);
        button.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:button];
    }
    return self;
}

- (void)didMoveToView:(SKView *)view {
    [[self childNodeWithName:@"topTitle"] runAction:[SKAction fadeInWithDuration:1.0] completion:^{
        [[self childNodeWithName:@"bottomTitle"] runAction:[SKAction fadeInWithDuration:1.0] completion:^{
            
        }];
    }];
}

- (void)test {
    NSLog(@"%@", [self childNodeWithName:@"topTitle"]);
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
    
    /* */
}

@end
