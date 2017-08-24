//
//  NSBundle+Sandboxer.m
//  Example
//
//  Created by meilbn on 24/08/2017.
//  Copyright © 2017 meilbn. All rights reserved.
//

#import "NSBundle+Sandboxer.h"

@implementation NSBundle (Sandboxer)

+ (NSBundle *)sandboxerBundle {
    static NSBundle *bundle = nil;
    if (!bundle) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"SandboxerResources" ofType:@"bundle"];
        bundle = [NSBundle bundleWithPath:path];
    }
    
    return bundle;
}

+ (NSString *)mlb_localizedStringForKey:(NSString *)key {
    return NSLocalizedStringFromTableInBundle(key, @"Sandboxer", [NSBundle sandboxerBundle], nil);
}

@end
