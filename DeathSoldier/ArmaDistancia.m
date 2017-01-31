//
//  ArmaDistancia.m
//  DeathSoldier
//
//  Created by cice on 31/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import "ArmaDistancia.h"
#import "Soldier.h"

@implementation ArmaDistancia

-(id)initWithNombre:(NSString *)nombre daño:(int)daño precision:(int)precision maxMunicion:(int)maxMunicion{
    
    self = [super initWithNombre:nombre daño:daño precision:precision];
    if(self){
        _municion = maxMunicion;
        _maxMunicion = maxMunicion;
    }
    
    return self;
}

-(void)atacar:(Soldier*)objetivo{
    // Si tengo suficiente munición...
    if(_municion>0){
        
        // Reduzco la munición
        _municion-=1;
        
        //Informo qude que estoy atacando
        //Tambien un casting (Soldier*) self.objetivo
        NSLog(@"%@ dice: Atacando a %@ con %@",
              [[self propietario] nombre], //tambien [self.propietario nombre]
              [objetivo nombre], //tambien objetivo.nombre
              self.nombre);
        
        // Miro si acierto el disparo
        int aleatorio = rand() % 10;
        if (aleatorio < self.precision){
            
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
        [self recargar];
    }
}

-(void)recargar{
    _municion = _maxMunicion;
    NSLog(@"%@ dice: No tengo munición, tengo que recargar", [self.propietario nombre]);
}


@end
