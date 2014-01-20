//
//  ViewController.m
//  AlertOnAppTermination
//
//  Created by koogawa on 2014/01/20.
//  Copyright (c) 2014年 Kosuke Ogawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CLLocationManager *_manager;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    if ([CLLocationManager locationServicesEnabled])
    {
        _manager = [[CLLocationManager alloc] init];
        _manager.delegate = self;

        [_manager startUpdatingLocation];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%s : %@, %@", __PRETTY_FUNCTION__, newLocation, oldLocation);
}

@end
