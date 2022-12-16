//
//  WasmerProgramLoader.h
//  
//
//  Created by Shota Shimazu on 2022/12/16.
//

#ifndef WasmerProgramLoader_h
#define WasmerProgramLoader_h

#import <Foundation/Foundation.h>
#import "include/wasmer.h"

@interface WasmerProgramLoader : NSObject
- (void) execute;
@end

#endif /* WasmerProgramLoader_h */
