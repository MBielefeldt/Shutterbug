//
//  HawaiiImageViewController.m
//  Shutterbug
//
//  Created by Mads Bielefeldt on 05/06/13.
//  Copyright (c) 2013 Mads Bielefeldt. All rights reserved.
//

#import "HawaiiImageViewController.h"

@interface HawaiiImageViewController ()

@end

@implementation HawaiiImageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imageURL = [[NSURL alloc] initWithString:@"http://images.apple.com/v/iphone/gallery/a/images/photo_3.jpg"];
}

@end
