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
        
        Soldier *soldado1;
        Soldier *soldado2;
        
        Arma *arma1;
        Arma *arma2;
        
        soldado1 = [[Soldier alloc] initWithNombre:@"Johny" vidaMaxima:100 precision:5];
        soldado2 = [[Soldier alloc] initWithNombre:@"Peter" vidaMaxima:60 precision:8];
        
        arma1 = [[Arma alloc] initWithNombre:@"fusil" daño:20];
        arma2 = [[Arma alloc] initWithNombre:@"rifle" daño:30];

        [soldado1 cambiarArma:arma1];
        [soldado2 cambiarArma:arma2];
        
        while(soldado1.vida > 0 && soldado2.vida > 0) {
            
            [soldado1 disparar:soldado2];
            [soldado2 disparar:soldado1];
        }
        
    }
    return 0;
}
