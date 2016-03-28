//
//  SliderView.h
//  Slider
//  //滑块动画
//  Created by Mathieu Bolard on 02/02/12.
//  Copyright (c) 2012 Streettours. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MBSliderLabel;
@protocol MBSliderViewDelegate;

@interface MBSliderView : UIView {
    UISlider *_slider;
    MBSliderLabel *_label;
    id<MBSliderViewDelegate> delegate;
    BOOL _sliding;
}

@property (nonatomic, assign) NSString *text;
@property (nonatomic, assign) UIColor *labelColor;
//留给xib
@property (nonatomic,assign) IBOutlet id<MBSliderViewDelegate> delegate;
@property (nonatomic) BOOL enabled;

- (void) setThumbColor:(UIColor *)color;

@end

@protocol MBSliderViewDelegate <NSObject>

- (void) sliderDidSlide:(MBSliderView *)slideView;

@end




@interface MBSliderLabel : UILabel {
    NSTimer *animationTimer;
    CGFloat gradientLocations[3];
    int animationTimerCount;
    BOOL _animated;
}

@property (nonatomic, assign, getter = isAnimated) BOOL animated;

@end