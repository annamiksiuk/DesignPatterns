//
//  Facade.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 10/18/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

class Facade: Pattern {
    func runCode() {
        let mall = ShoppingMall(title: "", address: "")
        let manager = ShoppingMallManager(shoppingMallService: mall)
        manager.registerShop(SportToyShop())

        print("---signboards---")
        print(manager.signboardDepartment.signboards)
    }
}
