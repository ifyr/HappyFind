//
//  MainMenu.m
//  HappyFind
//
//  Created by zzyy on 12-8-14.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "MainMenu.h"
#import "cocos2d.h"
#import "CCBReader.h"


@implementation MainMenu
// This method is called right after the class has been instantiated
// by CCBReader. Do any additional initiation here. If no extra
// initialization is needed, leave this method out.

- (void) didLoadFromCCB
{    
    
    
}

-(void) OnPlay
{
    [m_fogAndStars performFogComeIn];
    
    [self performSelector:@selector(changeScene) withObject:nil afterDelay:0.6];
}

-(void)changeScene
{
    [[CCDirector sharedDirector] replaceScene:[CCBReader sceneWithNodeGraphFromFile:@"stage.ccbi"]];
}
@end
