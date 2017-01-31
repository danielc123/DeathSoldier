//
//  ArmaCuerpoACuerpo.h
//  DeathSoldier
//
//  Created by cice on 31/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import "Arma.h"

@interface ArmaCuerpoACuerpo : Arma

@property (nonatomic, readonly) int maxDesgaste;
@property (nonatomic, readonly) int desgaste;

-(id)initWithNombre:(NSString*)nombre daño:(int)daño precision:(int)precision maxDesgaste:(int)maxDesgaste;

-(void)afilar;

@end
