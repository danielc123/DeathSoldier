//
//  Arma.h
//  DeathSoldier
//
//  Created by cice on 27/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Arma : NSObject

@property(nonatomic, readonly) NSString *nombre;
@property(nonatomic, readonly) int daño;

-(id)initWithNombre:(NSString*)nombre daño:(int)daño;

@end
