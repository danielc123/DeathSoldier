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

-(void)afilar;

@end
