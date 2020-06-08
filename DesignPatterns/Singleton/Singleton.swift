//
//  Singleton.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/8/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

class Singleton: Pattern {
    func runCode() {
        Family.standart.father.buyToy(from: KidsToyShop()).play()
        Family.standart.mum.sayHello()
    }
}
