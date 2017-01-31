//
//  ArmaCuerpoACuerpo.m
//  DeathSoldier
//
//  Created by cice on 31/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import "ArmaCuerpoACuerpo.h"
#import "Soldier.h"

// Interfaz Privada, todas las propiedades o metodos seran privados, no son necesarios declararlos
@interface ArmaCuerpoACuerpo ()

@property (nonatomic, assign) bool enfundada;

@end

@implementation ArmaCuerpoACuerpo

-(id)initWithNombre:(NSString *)nombre daño:(int)daño precision:(int)precision maxDesgaste:(int)maxDesgaste {
    
    self = [super initWithNombre:nombre daño:daño precision:precision];
    
    if(self) {
        _enfundada = true;
        _desgaste = maxDesgaste;
        _maxDesgaste = maxDesgaste;
    }
    return self;
}


-(void)atacar:(Soldier*)objetivo{
    
    if (_enfundada) {
        _enfundada = false;
        NSLog(@"%@ dice: Desenfundo mi %@ ",
              [[self propietario] nombre], //tambien [self.propietario nombre]
              self.nombre);
        return;
    }
    
    
    
    // Si el arma está afilada...
    if(_desgaste>0){
        
        //Informo qude que estoy atacando
        //Tambien un casting (Soldier*) self.objetivo
        NSLog(@"%@ dice: Atacando a %@ con %@",
              [[self propietario] nombre], //tambien [self.propietario nombre]
              [objetivo nombre], //tambien objetivo.nombre
              self.nombre);
        
        // Miro si acierto el ataque
        int aleatorio = rand() % 10;
        if (aleatorio < self.precision){
            
            // Reduzco el desgaste
            _desgaste-=1;
            
            // Si acierto, hago daño al objetivo
            NSLog(@"%@ dice: ¡He acertado!",
                  [[self propietario] nombre]); //tambien [self.propietario nombre]
            [objetivo recibirDaño:self.daño];
            
        } else{
            
            // Si no acierto, me quejo
            NSLog(@"%@ dice: ¡He fallado!",
                  [[self propietario] nombre]); //tambien [self.propietario nombre]
        }
        
    }
    else {
        // Si el arma está desgastada, la afilo
        [self afilar];
    }
}

-(void)afilar{
    NSLog(@"%@ dice: Tengo que afilar mi %@",
          [[self propietario] nombre], //tambien [self.propietario nombre]
          self.nombre);
    _desgaste = _maxDesgaste;
}

@end
