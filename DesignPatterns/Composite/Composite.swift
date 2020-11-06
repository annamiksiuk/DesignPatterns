//
//  Composite.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 11/1/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

final class Composite: Pattern {
    func runCode() {
        let rentingComposite = RentingComposite()
        rentingComposite.addRenter(renter: KidsToyShop())
        rentingComposite.addRenter(renter: SportToyShop())

        let accountant = Accountant()
        accountant.sendInvoiceRent(amount: 200, to: rentingComposite)
    }
}
