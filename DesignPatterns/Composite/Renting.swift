//
//  Renting.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 11/6/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

protocol Renting {
    func rentalBill(amount: Int)
}

extension KidsToyShop: Renting {
    func rentalBill(amount: Int) {
        print("KidsToyShop - I should to pay rent \(amount)")
    }
}

extension SportToyShop: Renting {
    func rentalBill(amount: Int) {
        print("SportToyShop - I should to pay rent \(amount)")
    }
}
