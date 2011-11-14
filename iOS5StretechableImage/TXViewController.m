//
//  TXViewController.m
//  iOS5StretechableImage
//
//  Created by Tonny Xu on 11/11/14.
//  Copyright (c) 2011 genesix Inc. All rights reserved.
//

#import "TXViewController.h"

@implementation TXViewController
@synthesize imageView;
@synthesize hSlider;
@synthesize vSlider;

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
  int i = arc4random() % 2;
  UIImage *image = (i == 0)?[UIImage imageNamed:@"SplashAD.png"]:[UIImage imageNamed:@"blueButton"];
  UIImage *resizableImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
  self.imageView.image = resizableImage;
}

- (void)viewDidUnload
{
  [self setImageView:nil];
  [self setHSlider:nil];
  [self setVSlider:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)horizontalChanged:(id)sender {
  // Origin size: 140x200
  self.imageView.frame = CGRectMake(10, 10, 140*(1.0+(vSlider.value - 0.5)), 200*(1.0 + (hSlider.value - 0.5)));
  
}

- (IBAction)veticalChanged:(id)sender {
  self.imageView.frame = CGRectMake(10, 10, 140*(1.0+(vSlider.value - 0.5)), 200*(1.0 + (hSlider.value - 0.5)));
}
- (void)dealloc {
  [imageView release];
  [hSlider release];
  [vSlider release];
  [super dealloc];
}
@end
