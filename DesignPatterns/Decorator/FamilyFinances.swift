//
//  FamilyFinances.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 9/20/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class FamilyFinances: FamilyFinancesCounting {
    var familyExpenses: Int { expenses }

    init(decoratee: Shopping) {
        self.decoratee = decoratee
    }

    private let decoratee: Shopping
    private var expenses = 0
}

extension FamilyFinances: Shopping {
    func buyToy(from shop: ToyShop) -> Toy {
        let toy = decoratee.buyToy(from: shop)

        expenses += toy.cost

        return toy
    }
}
