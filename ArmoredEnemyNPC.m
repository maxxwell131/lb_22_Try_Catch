//
//  ArmoredEnemyNPC.m
//  lb_22_Try_Catch
//
//  Created by admin on 4/20/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "ArmoredEnemyNPC.h"

@implementation ArmoredEnemyNPC

- (instancetype)initWithArmor:(int)pArmor AndAmmo:(int)pAmmo
{
    if (pArmor < 0 || pArmor > 20) {
        @throw [NSException exceptionWithName:@"MyInvalidArgumentException"
                                       reason:@"Бронь не может быть меньше 0 или больше 20"
                                     userInfo:nil];

    }
    self = [super initWithAmmo:pArmor];
    if (self) {
        self->armor = pArmor;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@, Armor: %i",
            [super description],
            self->armor];
}

-(void)receiveDamage:(int)damage {
    if (self->armor > 0) {
        self->armor--;
        damage = damage / 2;
    }
    [super receiveDamage:damage];
}

@end
