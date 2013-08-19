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
//  AppTabbar_iPhone.m
//  Bee_oschina
//
//  Created by bing050802 on 13-8-16.
//  Copyright (c) 2013年 Nanning DigiMaple Enterprise Data Solutions Co.,Ltd. All rights reserved.
//

#import "AppTabbar_iPhone.h"

#pragma mark -

@implementation AppTabbar_iPhone

SUPPORT_RESOURCE_LOADING( YES )
SUPPORT_AUTOMATIC_LAYOUT( YES )

- (void)load
{
	[super load];
}

- (void)unload
{
	[super unload];
}

- (void)deselectAll
{
	$(@"#first-bg").HIDE();
	$(@"#second-bg").HIDE();
	$(@"#third-bg").HIDE();
	
	$(@"#first-button").UNSELECT();
	$(@"#second-button").UNSELECT();
	$(@"#third-button").UNSELECT();
}

- (void)selectFirst
{
	[self deselectAll];

	$(@"#first-bg").SHOW();
	$(@"#first-button").SELECT();
	
    self.RELAYOUT();
}

- (void)selectSecond
{
	[self deselectAll];
	
	$(@"#second-bg").SHOW();
	$(@"#second-button").SELECT();
	
    self.RELAYOUT();
}

- (void)selectThird
{
	[self deselectAll];
	
	$(@"#third-bg").SHOW();
	$(@"#third-button").SELECT();
	
    self.RELAYOUT();
}

@end
