//
//  Accountant.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 11/6/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class Accountant {
    func sendInvoiceRent(amount: Int, to renter: Renting) {
        renter.rentalBill(amount: amount)
    }
}
