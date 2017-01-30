//
//  main.m
//  DeathSoldier
//
//  Created by cice on 27/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Soldier.h"
#import "Arma.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {

        srand((unsigned int)time(nil));
        
        NSArray *nombresSoldados = @[ @"John", @"Peter", @"Jonas", @"Carl", @"Rick"];
        NSArray *nombresArmas = @[@"Bazoka", @"Pistola", @"Rifle", @"Cuchillo", @"Puñetazo"];
        
        NSMutableArray *arraySoldados = [[NSMutableArray alloc] init];
        
        for(int i=0; i<5; i++){
            
            NSString *nombreSoldado = [nombresSoldados objectAtIndex:i];
                                //  = nombresSoldados[i];  tambien se puede usar
            NSString *nombreArma = nombresArmas[i];
            
            Soldier *nuevoSoldado = [[Soldier alloc]
                                     initWithNombre:nombreSoldado vidaMaxima:50+rand() % 50 precision:(float)rand() / INT_MAX * 10];

            Arma *nuevaArma = [[Arma alloc]
                               initWithNombre:nombreArma daño:10 + rand() % 10];
            [nuevoSoldado cambiarArma:nuevaArma];
        
            [arraySoldados addObject:nuevoSoldado];
        }
        
        
        while (arraySoldados.count > 1){
            
            // Variables para soldado atacante y defensor
            Soldier *soldadoAtacante;
            Soldier *soldadoDefensor;
            
            // Cojo un soldado atacante aleatorio
            soldadoAtacante = arraySoldados[rand() % arraySoldados.count];
            
            // Cojo un soldado defensor aleatorio que sea distinto del soldado atacante
            do {
               soldadoDefensor = arraySoldados[rand() % arraySoldados.count];
            } while (soldadoDefensor == soldadoAtacante);
            
            // El soldado atancante dispara al defensor
            [soldadoAtacante disparar:soldadoDefensor];
            
            // Si el soldado dfensor muere, le sacamos del array
            if (soldadoDefensor.muerto) {
                [arraySoldados removeObject:soldadoDefensor];
            }
        }
        
        NSLog(@"Ha ganado el soldado %@", [arraySoldados[0] nombre]);
        
        
//        Soldier *soldado1;
//        Soldier *soldado2;
//        
//        Arma *arma1;
//        Arma *arma2;
//        
//        soldado1 = [[Soldier alloc] initWithNombre:@"Johny" vidaMaxima:100 precision:5];
//        soldado2 = [[Soldier alloc] initWithNombre:@"Peter" vidaMaxima:60 precision:8];
//        
//        arma1 = [[Arma alloc] initWithNombre:@"fusil" daño:20];
//        arma2 = [[Arma alloc] initWithNombre:@"rifle" daño:30];
//
//        [soldado1 cambiarArma:arma1];
//        [soldado2 cambiarArma:arma2];
//        
////        NSArray *arraySoldados = [[NSArray alloc] initWithObjects:soldado1, soldado2, nil];
//        //otra forma de inicializar los Arrays
////        NSArray *arraySoldados1 = @[ soldado1, soldado2 ];
//        
//        while(soldado1.vida > 0 && soldado2.vida > 0) {
//            
//            [soldado1 disparar:soldado2];
//            [soldado2 disparar:soldado1];
//        }
        
    }
    return 0;
}
