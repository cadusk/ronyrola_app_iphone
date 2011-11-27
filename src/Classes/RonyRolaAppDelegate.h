//
//  RonyRolaAppDelegate.h
//  RonyRola
//
//  Created by Carlos Cardoso on 9/21/10.
//  Copyright SizeOf Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RonyRolaViewController;

@interface RonyRolaAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RonyRolaViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RonyRolaViewController *viewController;

@end

