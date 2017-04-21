//
//  ArmoredEnemyNPC.h
//  lb_22_Try_Catch
//
//  Created by admin on 4/20/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import "EnemyNPC.h"

@interface ArmoredEnemyNPC : EnemyNPC
{
    int armor;
}

-(instancetype)initWithArmor:(int)armor AndAmmo:(int)pAmmo;
-(NSString *)description;


@end
