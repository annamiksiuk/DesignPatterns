//
//  Family.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/8/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

class Family {
    static let standart = Family()

    let father = Father()
    let mum = Mum()
    let granny = Granny()

    private init() {
    }
}

extension Mum {
    func sayHello() {
        print("Hello, I'm mum")
    }
}
