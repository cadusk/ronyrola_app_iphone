//
//  RonyRolaViewController.h
//  RonyRola
//
//  Created by Carlos Cardoso on 9/21/10.
//  Copyright SizeOf Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface RonyRolaViewController : UIViewController <AVAudioPlayerDelegate> {
	UIButton *faceButton;
	UIImageView *falaImageView;

	AVAudioPlayer *player;
	NSTimer *timer;
}

@property (nonatomic, retain) IBOutlet UIButton *faceButton;
@property (nonatomic, retain) IBOutlet UIImageView *falaImageView;

- (IBAction)buttonPressed:(id)sender;
- (void)handleTimer;

@end

