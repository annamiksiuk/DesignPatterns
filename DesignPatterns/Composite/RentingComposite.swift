//
//  RentingComposite.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 11/6/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class RentingComposite: Renting {
    func addRenter(renter: Renting) {
        renters.append(renter)
    }

    func rentalBill(amount: Int) {
        renters.forEach {
            $0.rentalBill(amount: amount)
        }
    }

    private var renters = [Renting]()
}
