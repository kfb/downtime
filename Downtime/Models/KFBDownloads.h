//
//  KFBDownloads.h
//  Downtime
//
//  Created by kfb on 03/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KFBDownload.h"

@interface KFBDownloads : NSObject

// Holds the master list of all downloads
@property (retain) NSMutableArray *downloads;

// Return the shared instance
+ (KFBDownloads *)sharedInstance;

@end
