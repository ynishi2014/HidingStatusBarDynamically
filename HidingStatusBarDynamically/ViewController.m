//
//  ViewController.m
//  HidingStatusBarDynamically
//
//  Created by 西村洋一郎 on 2014/07/17.
//  Copyright (c) 2014年 西村洋一郎. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
	bool statusBarHidden;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	statusBarHidden = NO;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)toggleStatusBar:(id)sender{
	statusBarHidden = !statusBarHidden;
	[self setNeedsStatusBarAppearanceUpdate];
	NSLog(@"toggleStatusBar");
	if(statusBarHidden){
		NSLog(@"visible->hidden");
	}else{
		NSLog(@"hidden->visible");
	}
}
- (BOOL)prefersStatusBarHidden {
    return statusBarHidden;
}

@end
