//
//  DRKButtonNode.m
//  Dr.K_app
//
//  Created by Anthony Li on 3/20/2014.
//  Copyright (c) 2014 GW STEM Club. All rights reserved.
//

#import "DRKButtonNode.h"

@implementation DRKButtonNode

- (id)initWithTexture:(SKTexture *)texture color:(UIColor *)color size:(CGSize)size {
    if (self = [super initWithTexture:texture color:color size:size]) {
        self.colorBlendFactor = 0.0;
        SKLabelNode *buttonText = [[SKLabelNode alloc] init];
        buttonText.name = @"text";
        buttonText.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:buttonText];
    }
    return self;
}

- (SKLabelNode *)text {
    return (SKLabelNode *)[self childNodeWithName:@"text"];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    IMP method = [self.target methodForSelector:self.selector];
    method(self.target, self.selector);
}

@end
