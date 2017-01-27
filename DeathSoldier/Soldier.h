//
//  Soldier.h
//  DeathSoldier
//
//  Created by cice on 27/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"

@interface Soldier : NSObject

@property (nonatomic, readonly) NSString *nombre;
@property (nonatomic, readonly) int vidaMaxima;
@property (nonatomic, readonly) int vida;
@property (nonatomic, readonly) int blindaje;
@property (nonatomic, readonly) float precision;
@property (nonatomic, readonly) Arma *arma;

-(id)initWithNombre:(NSString*)nombre
         vidaMaxima:(int)vidaMaxima
               vida:(int)vida
           blindaje:(int)blindaje
          precision:(float)precision;

-(bool)disparar:(Soldier*)objetivo;
-(void)curar:(int)curacion;
-(void)recibirDaño:(int)daño;
-(void)cambiarArma:(Arma*)arma;

@end
