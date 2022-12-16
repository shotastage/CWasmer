//
//  WasmerProgramLoader.m
//  
//
//  Created by Shota Shimazu on 2022/12/16.
//

#include "WasmerProgramLoader.h"
#include "ProgramLoader.hpp"

@implementation ProgramLoaderWrapper {
    WasmerProgramLoader *wasmLoader;
}

-(id)init {
    self = [super init];
    wasmLoader = new WasmerProgramLoader();
    return self;
}

-(void)dealloc {
    delete wasmLoader;
    //[super dealloc];
}

-(void)execute {
    wasmLoader->execute();
}
@end
