//
//  KFBDownloadsTableDelegate.m
//  Downtime
//
//  Created by kfb on 03/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KFBDownloadsTableDelegate.h"

@implementation KFBDownloadsTableDelegate

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [[[KFBDownloads sharedInstance] downloads] count];
}

- (id)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    // Get the custom view from the table
    KFBDownloadsTableRow *tableRow = [tableView makeViewWithIdentifier:[tableColumn identifier] 
                                                                 owner:self];

    // Extract the source URL from the KFBDownload object
    NSMutableArray *downloads = [[KFBDownloads sharedInstance] downloads];
    KFBDownload    *download  = [downloads objectAtIndex:row];
    
    // Set the custom view's URL field with the source URL string 
    [[tableRow URL] setStringValue:[[download sourceURL] absoluteString]];

    // Get the default icon for the file type we're downloading
    NSString *pathExtension = [[download sourceURL] pathExtension];
    NSImage  *image = [[NSWorkspace sharedWorkspace] iconForFileType:pathExtension];
    
    [[tableRow image] setImage:image];
    
    // Set up the progress bar
    [[tableRow progressBar] setDoubleValue:0.0];
    
    // Register this view as the delegate for the download so we receive progess 
    // updates as the download progresses
    [download setDelegate:tableRow];
    
    return tableRow;
}

@end
