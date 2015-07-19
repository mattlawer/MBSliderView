//
//  ViewController.m
//  MBSliderView Demo
//
//  Created by Mathieu Bolard on 03/02/12.
//  Copyright (c) 2012 Streettours. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (UIColor *) randomColor;
@end

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MBSliderView *s1 = [[MBSliderView alloc] initWithFrame:CGRectMake(20.0, 20.0, self.view.frame.size.width-40.0, 44.0)];
    [s1 setText:@"滑动来解锁"]; // set the label text
    //[s1 setThumbColor:[self randomColor]]; // set custom thumb color
    //[s1 setLabelColor:[self randomColor]]; // set custom label color
    [s1 setDelegate:self]; // set the MBSliderView delegate
    [self.view addSubview:s1];
    [s1 release];
    
    
    // Loaded from nib
    [s2 setText:@"好滑, 好滑~噢耶"];
    [s2 setThumbColor:[UIColor colorWithRed:28.0/255.0 green:190.0/255.0 blue:28.0/255.0 alpha:1.0]];
    
    [s3 setText:@"Loaded from nib"];
    [s3 setThumbColor:[UIColor colorWithRed:190.0/255.0 green:28.0/255.0 blue:28.0/255.0 alpha:1.0]];
    
    [s4 setText:@"Customizable"];
    [s4 setThumbColor:[UIColor colorWithRed:28.0/255.0 green:28.0/255.0 blue:190.0/255.0 alpha:1.0]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


// MBSliderViewDelegate
- (void) sliderDidSlide:(MBSliderView *)slideView {
    // Customization example
    [slideView setThumbColor:[self randomColor]];
    [slideView setLabelColor:[self randomColor]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


// Random Color
- (UIColor *) randomColor {
    CGFloat r = arc4random()%255;
    CGFloat g = arc4random()%255;
    CGFloat b = arc4random()%255;
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0];
}

@end
