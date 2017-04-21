//
//  EnemyNPC.h
//  lb_22_Try_Catch
//
//  Created by admin on 4/20/17.
//  Copyright © 2017 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EnemyNPC : NSObject {
    int health;
    int pistolAmmo;
}

-(instancetype)initWithAmmo:(int)pAmmo;
-(void)receiveDamage:(int)damage;
-(int)attack;
-(NSString*)description;

@end
