/*
	File: GPlaylist.m
	Description: A Goonj playlist. Only contains a factory method which
	returns the appropriate subclass of GPlaylist (implementation).

	This file is part of Goonj.

	Goonj is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	Goonj is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Goonj. If not, see <http://www.gnu.org/licenses/>.

    Copyright 2009 Pratul Kalia.
    Copyright 2009 Ankur Sethi.
*/

#import "GPlaylist.h"
#import "GXSPFPlaylist.h"


@implementation GPlaylist

+ (GPlaylist *) initWithFile:(NSString *)aURL
{
	NSString *ext = [aURL pathExtension];

	if ([ext caseInsensitiveCompare:@"xspf"] == NSOrderedSame)
		return [[GXSPFPlaylist alloc] initWithFile:aURL];
	else if ([ext caseInsensitiveCompare:@"m3u"] == NSOrderedSame)
		NSLog(@"initialize M3U playlist");
	else if ([ext caseInsensitiveCompare:@"pls"] == NSOrderedSame)
		NSLog(@"initialize PLS playlist");
	
	return nil;
}

@end
