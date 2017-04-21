//
//  EnemyNPC.m
//  lb_22_Try_Catch
//
//  Created by admin on 4/20/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "EnemyNPC.h"

@implementation EnemyNPC

- (instancetype)initWithAmmo:(int)pAmmo
{
    if (pAmmo < 0) {
        @throw [NSException exceptionWithName:@"MyInvalidArgumentException"
                                        reason:@"Колличество патронов меньше 0"
                                        userInfo:nil];
    }
    
    self = [super init];
    if (self) {
        self->pistolAmmo = pAmmo;
        self->health = 100;
    }
    return self;
}

-(void)receiveDamage:(int)damage {
    self->health -= damage;
    if (self->health < 0) {
        @throw [NSException exceptionWithName:@"MyEnemyHealtException"
                                        reason:@"Закончилось здоровье, герой убит"
                                        userInfo:nil];
    }
}

-(int)attack {
    int damage = 0;

    if (self->pistolAmmo > 0) {
        self->pistolAmmo--;
        damage = rand() % 20;
    }
    return damage;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"pistolAmm0 = %i health = %i ", self->pistolAmmo, self->health];
}
@end
