//
//  KFBDownloads.m
//  Downtime
//
//  Created by kfb on 03/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KFBDownloads.h"

// The shared singleton instance
static KFBDownloads *sharedDownloadsInstance;

@implementation KFBDownloads

@synthesize downloads;

+ (void)initialize
{
    if (sharedDownloadsInstance == nil)
    {
        sharedDownloadsInstance = [[[KFBDownloads alloc] init] autorelease];
    }
}

+ (KFBDownloads *)sharedInstance
{
    return sharedDownloadsInstance;
}

- (oneway void)release
{
    // Overridden to avoid anyone accidentally releasing the shared instance
}

- (id)init
{
    if (self = [super init])
    {
        downloads = [[NSMutableArray alloc] initWithCapacity:10];
        
        // TODO: load from file
    }
    
    return self;
}

@end
