//
//  DRKButtonNode.h
//  Dr.K_app
//
//  Created by Anthony Li on 3/20/2014.
//  Copyright (c) 2014 GW STEM Club. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface DRKButtonNode : SKSpriteNode

- (SKLabelNode *)text;

@property (weak) id target;
@property SEL selector;

@property (unsafe_unretained) BOOL activatesOnClick;
@property (unsafe_unretained) BOOL activatesOnHover;

@end
