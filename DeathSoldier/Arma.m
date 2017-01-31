//
//  Arma.m
//  DeathSoldier
//
//  Created by cice on 27/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import "Arma.h"
#import "Soldier.h"

//Propiedad Privada
//@interface Arma ()
//@property (nonatomic) int numero;
//@end

@implementation Arma

-(id)initWithNombre:(NSString *)nombre
               daño:(int)daño
          precision:(int)precision{
    self = [super init];
    if (self){
        _nombre = nombre;
        _daño = daño;
        _precision = precision;
    }
    return self;
}

-(void)atacar:(Soldier*)soldado{
}

@end
