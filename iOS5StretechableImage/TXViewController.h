//
//  TXViewController.h
//  iOS5StretechableImage
//
//  Created by Tonny Xu on 11/11/14.
//  Copyright (c) 2011 genesix Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TXViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UISlider *hSlider;
@property (retain, nonatomic) IBOutlet UISlider *vSlider;

- (IBAction)horizontalChanged:(id)sender;
- (IBAction)veticalChanged:(id)sender;
@end
