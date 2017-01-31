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

@property (nonatomic, readonly, copy) NSString *nombre;
@property (nonatomic, readonly, assign) int vidaMaxima;
@property (nonatomic, readonly, assign) int vida;
@property (nonatomic, readonly, strong) Arma *arma;
@property (nonatomic, readonly, assign) bool muerto;

-(id)initWithNombre:(NSString*)nombre
         vidaMaxima:(int)vidaMaxima;


-(bool)atacar:(Soldier*)objetivo;
-(void)curar:(int)curacion;
-(void)recibirDaño:(int)daño;
-(void)cambiarArma:(Arma*)arma;

@end
