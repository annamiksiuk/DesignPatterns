//
//  Shop.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 10/18/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

protocol Shop {
    var title: String { get }
}

extension SportToyShop: Shop {
    var title: String { "SportToyShop" }
}
