//
//  ViewController.h
//  MBSliderView Demo
//
//  Created by Mathieu Bolard on 03/02/12.
//  Copyright (c) 2012 Streettours. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBSliderView.h"

@interface ViewController : UIViewController <MBSliderViewDelegate> {
    IBOutlet MBSliderView *s2;
    IBOutlet MBSliderView *s3;
    IBOutlet MBSliderView *s4;
}

@end
