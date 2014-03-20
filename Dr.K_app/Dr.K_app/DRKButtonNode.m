//
//  DRKButtonNode.m
//  Dr.K_app
//
//  Created by Anthony Li on 3/20/2014.
//  Copyright (c) 2014 GW STEM Club. All rights reserved.
//

#import "DRKButtonNode.h"

@implementation DRKButtonNode

- (id)init {
    if (self = [super init]) {
        SKLabelNode *buttonText = [[SKLabelNode alloc] init];
        buttonText.name = @"text";
        [self addChild:buttonText];
    }
    return self;
}

- (SKLabelNode *)text {
    return (SKLabelNode *)[self childNodeWithName:@"text"];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

@end
