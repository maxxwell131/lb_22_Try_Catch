//
//  main.m
//  lb_22_Try_Catch_inheritance
//
//  Created by admin on 4/20/17.
//  Copyright © 2017 admin. All rights reserved.
// https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Exceptions/Tasks/HandlingExceptions.html
// 

#import <Foundation/Foundation.h>
#import "EnemyNPC.h"
#import "ArmoredEnemyNPC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        srand((unsigned int) time(NULL));
        @try {
//            EnemyNPC *E1 = [[EnemyNPC alloc] initWithAmmo:10];
//            EnemyNPC *E2 = [[EnemyNPC alloc] initWithAmmo:10];

            ArmoredEnemyNPC *E1 = [[ArmoredEnemyNPC alloc] initWithArmor:(rand() %10 + 10) AndAmmo:(rand() %10 + 15)];
            ArmoredEnemyNPC *E2 = [[ArmoredEnemyNPC alloc] initWithArmor:(rand() %10 + 10) AndAmmo:(rand() %10 + 15)];

            
            while (true) {
                int a;
                NSLog(@"1 - Ход\n2-Выход из игры");
                scanf("%i", &a);
                
                if (a == 2) {
                    break;
                }
                
                int damage = [E1 attack];
                [E2 receiveDamage:damage];
                
                damage = [E2 attack];
                [E1 receiveDamage:damage];
                
                NSLog(@"E1 => %@", E1);
                NSLog(@"E2 => %@", E2);
            }

        } @catch (NSException *exception) {
            if ([exception.name isEqualToString:@"MyInvalidArgumentException"]) {
                NSLog(@"Ошибка! Неправильный параметр: %@", exception.reason);
            }
            if ([exception.name isEqualToString:@"MyEnemyHealtException"]) {
                NSLog(@"Конец игры : %@", exception.reason);
            } else {
                NSLog(@"Ошибка: %@", exception.name);
                NSLog(@"Причина: %@", exception.reason);
            }
        }
    }
    return 0;
}

/*
д-з 
 создать класс человек - фамилия,имя,дата рождения  (наш класс)
 создать класс студент, производный от человека - факультет(NSString) и массив оценок(NSMutableArray)<Rate>
 
 Human
 
 lastname
 firstname
 birthday -> Date (наш класс)
 -(NSString*)description;
 
 Student: Human
 Факультет - NSString
 Массив оценок (NSMutableArray<Rate>)
 
 -(void) addRate (NSString *predmet, int rate); //0..12 - проверка ввода исключетельной ситуацией
 -(int) get AverageRate;
 -(void) showRates;
 -(NSString*)description;
 
 @interface Rate:NSObject
 {
     @public
 predmet -->NSString;
 rate --> int
 
*/
