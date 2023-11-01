//
//  NSBundle+Sandboxer.m
//  Example
//
//  Created by meilbn on 24/08/2017.
//  Copyright © 2017 meilbn. All rights reserved.
//

#import "NSBundle+Sandboxer.h"
#import "Sandboxer.h"
#import "Sandboxer-Header.h"

@implementation NSBundle (Sandboxer)

+ (NSBundle *)sandboxerBundle {
    static NSBundle *bundle = nil;
    if (!bundle) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"SandboxerResources" ofType:@"bundle"];
        if (MLBIsStringEmpty(path)) {
#ifdef SWIFT_PACKAGE
            NSBundle *bd = [NSBundle module];
#else
            NSBundle *bd = [NSBundle bundleForClass:[Sandboxer class]];
#endif
            if (bd) {
                path = [bd pathForResource:@"SandboxerResources" ofType:@"bundle"];
            }
        }
        
        bundle = [NSBundle bundleWithPath:path];
    }
    
    return bundle;
}

+ (NSString *)mlb_localizedStringForKey:(NSString *)key {
    return NSLocalizedStringFromTableInBundle(key, @"Sandboxer", [NSBundle sandboxerBundle], nil);
}

+ (NSBundle *)module {
    NSString *bundleName = @"Sandboxer-Objc_Sandboxer";
    NSArray<NSURL*>* candidates = @[
        NSBundle.mainBundle.resourceURL,
        [NSBundle bundleForClass:[Sandboxer class]].resourceURL,
        NSBundle.mainBundle.bundleURL
    ];
    for (NSURL* candidate in candidates) {
        NSURL* bundlePath = [candidate URLByAppendingPathComponent: [NSString stringWithFormat:@"%@.bundle", bundleName]];
        NSBundle* bundle = [NSBundle bundleWithURL:bundlePath];
        if (bundle != nil) {
            return bundle;
        }
    }
    return  [NSBundle bundleForClass:[Sandboxer class]];
}

@end
