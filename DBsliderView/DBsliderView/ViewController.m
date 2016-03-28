//
//  ViewController.m
//  DBsliderView
//
//  Created by Jdb on 16/1/21.
//  Copyright © 2016年 uimbank. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    //添加滑块
    _MBSlider = [[MBSliderView alloc] initWithFrame:CGRectMake(20.0, 100.0, [[UIScreen mainScreen] bounds].size.width-38.0, 35.0)];
    _MBSlider.tag = 0;
    //边框颜色
    _MBSlider.layer.borderWidth = 1;
    _MBSlider.layer.borderColor =  [[UIColor orangeColor] CGColor];
    //背景颜色
    _MBSlider.backgroundColor = [UIColor colorWithRed:255/255.0 green:250/255.0 blue:250/255.0 alpha:1.0];
    //边角弧度
    _MBSlider.layer.cornerRadius = 3.0;
    //设置显示字体
    [_MBSlider setText:@"Happy New Year!"];
    //滑块颜色
    [_MBSlider setThumbColor:[UIColor colorWithRed:255/255.0 green:109/255.0 blue:11/255.0 alpha:1.0]];
    //闪动字体颜色
    [_MBSlider setLabelColor:[UIColor colorWithRed:255/255.0 green:109/255.0 blue:11/255.0 alpha:1.0]];
    //设置代理
    [_MBSlider setDelegate:self];
    [self.view addSubview:_MBSlider];
    
    ///*************************************///
    
    _MBSlider1 = [[MBSliderView alloc] initWithFrame:CGRectMake(20.0, 165.0, [[UIScreen mainScreen] bounds].size.width-38.0, 35.0)];
    _MBSlider1.tag = 1;
    _MBSlider1.layer.cornerRadius = 3.0;
    _MBSlider1.backgroundColor = [UIColor grayColor];
    [_MBSlider1 setText:@"滑动来解锁"];
    [_MBSlider1 setDelegate:self];
    [self.view addSubview:_MBSlider1];
    
    
    ///*************************************///
    
    _MBSlider2 = [[MBSliderView alloc] initWithFrame:CGRectMake(20.0, 195.0+30, [[UIScreen mainScreen] bounds].size.width-38.0, 35.0)];
    _MBSlider2.backgroundColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:250/255.0 alpha:0.3];
    _MBSlider2.tag = 2;
    _MBSlider2.layer.cornerRadius = 3.0;
    [_MBSlider2 setText:@"滑动来获取验证码"];
    [_MBSlider2 setThumbColor:[UIColor blueColor]];
    [_MBSlider2 setDelegate:self];
    [self.view addSubview:_MBSlider2];
    
    ///*************************************///
    
    _MBSlider3 = [[MBSliderView alloc] initWithFrame:CGRectMake(20.0, 290, [[UIScreen mainScreen] bounds].size.width-38.0, 35.0)];
    _MBSlider3.backgroundColor = [UIColor colorWithRed:255/255.0 green:0/255.0 blue:0/255.0 alpha:0.3];
    _MBSlider3.tag = 3;
    _MBSlider3.layer.cornerRadius = 3.0;
    [_MBSlider3 setText:@"滑动来获取红包"];
    [_MBSlider3 setThumbColor:[UIColor redColor]];
    [_MBSlider3 setDelegate:self];
    [self.view addSubview:_MBSlider3];
    
    //打赏我，😄
    UILabel *prizetext2 = [[UILabel alloc] initWithFrame:CGRectMake(0,self.view.frame.size.height/1.7,320,20)];
    prizetext2.text = @"微信或支付宝打赏他一下(左微信，右支付宝)";
    prizetext2.font = [UIFont systemFontOfSize:15.0f];
    prizetext2.textColor = [UIColor blackColor];
    prizetext2.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:prizetext2];
    
    UIImageView *erweimaImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/1.7+25, 150,150)];
    [erweimaImgView setImage:[UIImage imageNamed:@"erweima@2x.jpg"]];
    [self.view addSubview:erweimaImgView];
    
    UIImageView *zfbmaImgView = [[UIImageView alloc] initWithFrame:CGRectMake(168, self.view.frame.size.height/1.7+25, 150,150)];
    [zfbmaImgView setImage:[UIImage imageNamed:@"zfb.png"]];
    [self.view addSubview:zfbmaImgView];
    
    
}

- (void) sliderDidSlide:(MBSliderView *)slideView {
    switch ((long)slideView.tag) {
        case 0:
            NSLog(@"Happy New Year!");
            break;
        case 1:
            NSLog(@"滑动来解锁");
            break;
        case 2:
            NSLog(@"滑动来获取验证码");
            break;
        case 3:
            NSLog(@"滑动来获取红包");
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
