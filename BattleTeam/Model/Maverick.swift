//
//  Maverick.swift
//  BattleTeam
//
//  Created by user163027 on 3/1/20.
//  Copyright © 2020 user163027. All rights reserved.
//

import UIKit

//Extended Class Maverick
public class Maverick :Weapon {
    let damageMultiplier: Float = 1.2
    
    init(numBullets: Int, name: String) {
        let newDamage = Int(self.damageMultiplier * Float (Weapon.DEFAULT_DAMAGE))
        super.init(numBullets, name, newDamage)
    }
//Overriding the function fire
    override func fire() -> Int {
    print("Shooting through Maverick")
    self.setNumBullets(numBullets: getNumBullets()-1)
        if(self.getNumBullets()<=0) {
            self.reload()
                return 0
        }
        else {
            return self.getNumBullets()
        }
    }
}
