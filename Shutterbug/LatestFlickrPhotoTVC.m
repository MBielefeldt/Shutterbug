//
//  LatestFlickrPhotoTVC.m
//  Shutterbug
//
//  Created by Mads Bielefeldt on 06/06/13.
//  Copyright (c) 2013 Mads Bielefeldt. All rights reserved.
//

#import "LatestFlickrPhotoTVC.h"
#import "FlickrFetcher.h"

@interface LatestFlickrPhotoTVC ()

@end

@implementation LatestFlickrPhotoTVC

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self loadLatestPhotosFromFlickr];
    
    [self.refreshControl addTarget:self
                            action:@selector(loadLatestPhotosFromFlickr)
                  forControlEvents:UIControlEventValueChanged];
}

- (void)loadLatestPhotosFromFlickr
{
    [self.refreshControl beginRefreshing];
    dispatch_queue_t loaderQueue = dispatch_queue_create("Flickr Loader Queue", NULL);
    dispatch_async(loaderQueue, ^{
        NSArray *latestPhotos = [FlickrFetcher recentGeoreferencedPhotos];
        dispatch_async(dispatch_get_main_queue(), ^{
            self.photos = latestPhotos;
            [self.refreshControl endRefreshing];
        });
    });
}

@end
