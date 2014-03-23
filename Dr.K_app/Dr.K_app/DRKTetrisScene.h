//
//  DRKTetrisScene.h
//  Dr.K_app
//
//  Created by Anthony Li on 3/22/2014.
//  Copyright (c) 2014 GW STEM Club. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "DRKMovingBlockSet.h"

@protocol DRKTetrisSceneDelegate <NSObject>

@optional

- (void)setDidSpawn:(DRKMovingBlockSet *)blockSet;
- (void)setDidDespawn:(DRKMovingBlockSet *)blockSet;

@end

@interface DRKTetrisScene : SKScene

@property (weak) id<DRKTetrisSceneDelegate> delegate;

- (void)beginGame;
- (void)pauseGame;
- (void)quitGame;

- (void)moveRight;
- (void)moveLeft;
- (void)rotateRight;
- (void)rotateLeft;

- (NSTimeInterval)downInterval;
- (DRKMovingBlockSet *)currentBlockSet;
- (BOOL)activeBlockSet;

@end
