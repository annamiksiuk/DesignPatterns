//
//  Eatable.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/6/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

protocol Eatable {
    func eat()
}

class Milk: Eatable {
    func eat() {
        print("Someone is drinking milk")
    }
}

class Candy: Eatable {
    func eat() {
        print("Someone eating candy")
    }
}
