//
//  AppBoard_iPhone.m
//  Bee_oschina
//
//  Created by bing050802 on 13-8-16.
//  Copyright (c) 2013年 Nanning DigiMaple Enterprise Data Solutions Co.,Ltd. All rights reserved.
//

#import "AppBoard_iPhone.h"
#import "AppTabbar_iPhone.h"

@implementation AppBoard_iPhone
{
	AppTabbar_iPhone *	_tabbar;
}

DEF_SINGLETON( AppBoard_iPhone )

+ (void)load
{
}

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
        self.view.backgroundColor = [UIColor whiteColor];
		[self.view addSubview:[BeeUIRouter sharedInstance].view];

        _tabbar = [[AppTabbar_iPhone alloc] init];
		[_tabbar selectFirst];
        [self.view addSubview:_tabbar];

		[[BeeUIRouter sharedInstance] open:@"first"];
	}
	else if ( [signal is:BeeUIBoard.DELETE_VIEWS] )
	{
        SAFE_RELEASE( _tabbar );
	}
	else if ( [signal is:BeeUIBoard.LAYOUT_VIEWS] )
	{
		[BeeUIRouter sharedInstance].view.frame = self.bounds;
		_tabbar.frame = CGRectMake( 0, self.height - 44, self.width, 44 );
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

ON_SIGNAL3( AppTabbar_iPhone, first, signal )
{
	[_tabbar selectFirst];
	[[BeeUIRouter sharedInstance] open:@"first"];

	// TODO:
}

ON_SIGNAL3( AppTabbar_iPhone, second, signal )
{
	[_tabbar selectSecond];
	[[BeeUIRouter sharedInstance] open:@"second"];

	// TODO:
}

ON_SIGNAL3( AppTabbar_iPhone, third, signal )
{
	[_tabbar selectThird];
	[[BeeUIRouter sharedInstance] open:@"third"];

	// TODO:
}

ON_SIGNAL3( BeeUINavigationBar, LEFT_TOUCHED, signal )
{
	[super handleUISignal:signal];
}


ON_SIGNAL3( BeeUINavigationBar, RIGHT_TOUCHED, signal )
{
	[super handleUISignal:signal];
}

#pragma mark Notification

ON_NOTIFICATION( notification )
{
	
}

#pragma mark Message

ON_MESSAGE( message )
{
	
}

@end
