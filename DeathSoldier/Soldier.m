//
//  Soldier.m
//  DeathSoldier
//
//  Created by cice on 27/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import "Soldier.h"

@implementation Soldier

-(id)initWithNombre:(NSString *)nombreSoldado
         vidaMaxima:(int)vidaMaxima{
    
    self = [super init];
    
    if (self) {
        _nombre = nombreSoldado;
        _vidaMaxima = vidaMaxima;
        _vida = vidaMaxima;
        _arma = nil;
    }
    return self;
}

-(bool)muerto{
    return _vida <= 0;
}


-(bool)atacar:(Soldier *)objetivo{
    if (self.muerto) return false;
    if (_arma != nil){
        [_arma atacar:objetivo];
        return true;
    }
    else {
        NSLog(@"%@ dice: Maldita sea, no tengo arma", _nombre);
        return false;
    }

}

-(void)curar:(int)curacion{
    _vida += curacion;
    if (_vida > _vidaMaxima) {
        _vida = _vidaMaxima;
    }
}

-(void)recibirDaño:(int)daño{
    if (self.muerto) return;
    _vida -= daño;
    NSLog(@"%@ dice: Arghh, me han herido", _nombre);
    if (_vida <=0) {
        [self morir];
    }
}

-(void)cambiarArma:(Arma *)arma{
    if (self.muerto) return;
    if (_arma != nil){
        _arma.propietario = nil;
        NSLog(@"%@ dice: Suelto el arma %@", _nombre, _arma.nombre);
    }
    _arma = arma;
    if (_arma != nil){
        _arma.propietario = self;
        NSLog(@"%@ dice: Cojo el arma %@", _nombre, _arma.nombre);
    }
}

-(void)morir {
    NSLog(@"%@ dice: ¡ME MUERO!", _nombre);
}


@end
