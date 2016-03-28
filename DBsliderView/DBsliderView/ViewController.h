//
//  ViewController.h
//  DBsliderView
//
//  Created by Jdb on 16/1/21.
//  Copyright © 2016年 uimbank. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBSliderView.h"
@interface ViewController : UIViewController<MBSliderViewDelegate>
{
    
}
@property (strong, nonatomic) MBSliderView *MBSlider;//滑块带边框
@property (strong, nonatomic) MBSliderView *MBSlider1;//滑块不带边框
@property (strong, nonatomic) MBSliderView *MBSlider2;
@property (strong, nonatomic) MBSliderView *MBSlider3;
@end

