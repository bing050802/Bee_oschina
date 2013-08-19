//
//	 ______    ______    ______    
//	/\  __ \  /\  ___\  /\  ___\   
//	\ \  __<  \ \  __\_ \ \  __\_ 
//	 \ \_____\ \ \_____\ \ \_____\ 
//	  \/_____/  \/_____/  \/_____/ 
//
//	Powered by BeeFramework
//
//
//  SplitCascadeViewBoard_iPad.m
//  Bee_oschina
//
//  Created by bing050802 on 13-8-19.
//  Copyright (c) 2013年 Nanning DigiMaple Enterprise Data Solutions Co.,Ltd. All rights reserved.
//

#import "SplitCascadeViewBoard_iPad.h"

#pragma mark -

@interface SplitCascadeViewBoard_iPad()
{
	//<#@private var#>
}
@end

@implementation SplitCascadeViewBoard_iPad

- (void)load
{
	[super load];
}

- (void)unload
{
	[super unload];
}

#pragma mark Signal

ON_SIGNAL2( BeeUIBoard, signal )
{
    [super handleUISignal:signal];

    if ( [signal is:BeeUIBoard.CREATE_VIEWS] )
    {
        // add background
        UIView* backgroundView = [[UIView alloc] init];
        [backgroundView setBackgroundColor: [UIColor colorWithPatternImage: [UIImage imageNamed: @"brown_bg_128x128"]]];
        [self setBackgroundView:backgroundView];
        
        // add divider
        UIImage* divider = [UIImage imageNamed:@"divider_vertical.png"];
        [self setDividerImage: divider];
        
        // change offsets
        [self.cascadeNavigationController setLeftInset: 210.0f];
        [self.cascadeNavigationController setWiderLeftInset: 210.0f];
    }
    else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
    {
    }
    else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
    {
    }
    else if ( [signal is:BeeUIBoard.LOAD_DATAS] )
    {
    }
    else if ( [signal is:BeeUIBoard.FREE_DATAS] )
    {
    }
    else if ( [signal is:BeeUIBoard.WILL_APPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.DID_APPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.WILL_DISAPPEAR] )
    {
    }
    else if ( [signal is:BeeUIBoard.DID_DISAPPEAR] )
    {
    }
}

ON_SIGNAL2( BeeUINavigationBar, signal )
{
	[super handleUISignal:signal];
	
	if ( [signal is:BeeUINavigationBar.LEFT_TOUCHED] )
	{
	}
	else if ( [signal is:BeeUINavigationBar.RIGHT_TOUCHED] )
	{
	}
}

@end
