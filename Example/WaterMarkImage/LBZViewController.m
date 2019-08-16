//
//  LBZViewController.m
//  WaterMarkImage
//
//  Created by laobizhai on 08/15/2019.
//  Copyright (c) 2019 laobizhai. All rights reserved.
//

#import "LBZViewController.h"
#import <LBZGetWaterMarkImage.h>
/*屏幕宽高*/
#define KSCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define KSCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface LBZViewController ()

@end

@implementation LBZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *img = [UIImage imageNamed:@"cropImage.jpg"];
    UIImage *waterImg = [[LBZGetWaterMarkImage alloc] getWaterMarkImage:img andTitle:@"唯一合法性" andMarkFont:[UIFont fontWithName:@"Arial-BoldMT"size:50.0f] andMarkColor:[UIColor colorWithRed:255.0 green:0 blue:0 alpha:0.5f]];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, KSCREENWIDTH / 1.58)];
    imgView.center = self.view.center;
    imgView.image = waterImg;
    [self.view addSubview:imgView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
