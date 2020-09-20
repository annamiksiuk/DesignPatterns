//
//  Decorator.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 9/20/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class Decorator: Pattern {
    func runCode() {
        let father = Father()
        let familyFinances = FamilyFinances(decoratee: father)

        _ = familyFinances.buyToy(from: KidsToyShop())
        print("Family expenses - \(familyFinances.familyExpenses)")

        _ = familyFinances.buyToy(from: SportToyShop())
        print("Family expenses - \(familyFinances.familyExpenses)")
    }
}
