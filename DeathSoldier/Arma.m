//
//  Arma.m
//  DeathSoldier
//
//  Created by cice on 27/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import "Arma.h"

@implementation Arma

-(id)initWithNombre:(NSString *)nombre daño:(int)daño{
    self = [super init];
    if (self){
        _nombre = nombre;
        _daño = daño;
    }
    return self;
}

@end
