//
//  KFBDownloadsTableRow.m
//  Downtime
//
//  Created by kfb on 03/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KFBDownloadsTableRow.h"

@implementation KFBDownloadsTableRow

@synthesize image;
@synthesize URL;
@synthesize progressBar;

- (void)download:(id)download didAdvanceToProgressPercent:(double)percent
{
    [progressBar setDoubleValue:percent];
}

@end
