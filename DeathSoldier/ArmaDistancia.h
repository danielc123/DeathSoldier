//
//  ArmaDistancia.h
//  DeathSoldier
//
//  Created by cice on 31/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import "Arma.h"

@interface ArmaDistancia : Arma

@property (nonatomic, readonly) int maxMunicion;
@property (nonatomic, readonly) int municion;

-(id)initWithNombre:(NSString *)nombre daño:(int)daño precision:(int)precision maxMunicion:(int)maxMunicion;

-(void)recargar;

@end
