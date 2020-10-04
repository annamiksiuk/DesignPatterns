//
//  Bridge.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 10/4/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class Bridge: Pattern {
    func runCode() {
        let shoppingMall = ShoppingMall(title: "CapitalMall", address: "Capital Street, 100")
        shoppingMall.openNewToyShop(KidsToyShop())
        shoppingMall.openNewToyShop(SportToyShop())

        if let bestToyShop = shoppingMall.bestToyShop {
            let toy = Father().buyToy(from: bestToyShop)
            toy.play()
        }
    }
}
