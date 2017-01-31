//
//  Arma.h
//  DeathSoldier
//
//  Created by cice on 27/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Arma : NSObject

@property (nonatomic, readonly) NSString *nombre;
@property (nonatomic, readonly) int precision;
@property (nonatomic, readonly) int daño;
@property (nonatomic, weak) id propietario;

-(id)initWithNombre:(NSString*)nombre daño:(int)daño precision:(int)precision;

-(void)atacar:(id)soldado;

@end
