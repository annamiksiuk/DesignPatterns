//
//  Father.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 9/20/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class Father: Shopping {
    func buyToy(from shop: ToyShop) -> Toy {
        return shop.sellToy()
    }
}
