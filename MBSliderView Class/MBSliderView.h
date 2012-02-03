//
//  SliderView.h
//  Slider
//
//  Created by Mathieu Bolard on 02/02/12.
//  Copyright (c) 2012 Streettours. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MBSliderLabel;
@protocol MBSliderViewDelegate;

@interface MBSliderView : UIView {
    UISlider *slider;
    MBSliderLabel *label;
    id<MBSliderViewDelegate> delegate;
    BOOL sliding;
}

@property (nonatomic, retain) UISlider *slider;
@property (nonatomic, retain) MBSliderLabel *label;
@property (nonatomic, assign) IBOutlet id<MBSliderViewDelegate> delegate;
@property (nonatomic) BOOL enabled;

- (void) setThumbColor:(UIColor *)color;
- (void) setText:(NSString *)text;

@end

@protocol MBSliderViewDelegate <NSObject>

- (void) sliderDidSlide:(MBSliderView *)slider;

@end




@interface MBSliderLabel : UILabel {
    NSTimer *animationTimer;
    CGFloat gradientLocations[3];
    int animationTimerCount;
    BOOL _animated;
}

@property (nonatomic, assign, getter = isAnimated) BOOL animated;

@end