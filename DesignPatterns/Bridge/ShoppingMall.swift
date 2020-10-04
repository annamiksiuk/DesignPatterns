//
//  ShoppingMall.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 10/4/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class ShoppingMall {
    init(title: String, address: String) {
        self.title = title
        self.address = address
    }

    private let title: String
    private let address: String
    private var toyShops = [ToyShop]()
}

extension ShoppingMall: ShoppingMallService {
    func openNewToyShop(_ toyShop: ToyShop) {
        toyShops.append(toyShop)
    }
}

extension ShoppingMall: Bestsellers {
    var bestToyShop: ToyShop? {
        return toyShops.first
    }
}
