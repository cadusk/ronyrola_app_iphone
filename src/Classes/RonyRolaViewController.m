//
//  RonyRolaViewController.m
//  RonyRola
//
//  Created by Carlos Cardoso on 9/21/10.
//  Copyright SizeOf Inc 2010. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import "RonyRolaViewController.h"

@implementation RonyRolaViewController

@synthesize faceButton;
@synthesize falaImageView;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	// Initialize sound player
	NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
	NSURL *speechUrl = [NSURL 
						fileURLWithPath:[NSString stringWithFormat:@"%@/Eu_Preciso_de_Um_Companheiro.mp3", resourcePath]];
	
	NSError *error;
	player = [[AVAudioPlayer alloc] initWithContentsOfURL:speechUrl error:&error];
	[player setDelegate:self];
	player.numberOfLoops = 0;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (IBAction)buttonPressed:(id)sender {
	if (player == nil)
		NSLog(@"Player is nil!");
	
	if ([player isPlaying])
		return;
	
	timer = [NSTimer scheduledTimerWithTimeInterval:0.1
											 target:self
										   selector:@selector(handleTimer)
										   userInfo:nil
											repeats:YES];
	[player play];
}

- (void)dealloc {
	[player release];
	[timer release];

    [super dealloc];
}

#pragma mark TimerHandler
- (void)handleTimer {
	// update image to get speaking mouth feel
	[falaImageView setHidden:![falaImageView isHidden]];
}

#pragma mark AV Foundation delegate methods
- (void) audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag {
	[timer invalidate];
	
	// hide speaking image when done speaking
	[falaImageView setHidden:YES];
}

@end
