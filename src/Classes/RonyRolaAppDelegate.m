//
//  RonyRolaAppDelegate.m
//  RonyRola
//
//  Created by Carlos Cardoso on 9/21/10.
//  Copyright SizeOf Inc 2010. All rights reserved.
//

#import "RonyRolaAppDelegate.h"
#import "RonyRolaViewController.h"

@implementation RonyRolaAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
