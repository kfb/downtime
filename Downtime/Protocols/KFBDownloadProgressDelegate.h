//
//  KFBDownloadProgressDelegate.h
//  Downtime
//
//  Created by kfb on 03/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol KFBDownloadProgressDelegate <NSObject>

- (void)download:(id)download didAdvanceToProgressPercent:(double)percent;

@end
