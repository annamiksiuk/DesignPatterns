//
//  ShoppingMallManager.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 10/18/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class ShoppingMallManager: ShoppingMallManaging {
    let signboardDepartment = SignboardDepartment.shared

    init(shoppingMallService: ShoppingMallService) {
        self.shoppingMallService = shoppingMallService
    }

    func registerShop(_ shop: Shop) {
        signboardDepartment.registerTitle(shop.title)

        if let toyShop = shop as? ToyShop {
            shoppingMallService.openNewToyShop(toyShop)
        }
    }

    private let shoppingMallService: ShoppingMallService
}
