//
//  Toy.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 5/2/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

protocol Toy {
    var cost: Int { get }
    func play()
}

class Doll: Toy {
    var cost: Int { 100 }
    
    func play() {
        print("mama-mama")
    }
}

class Ball: Toy {
    var cost: Int { 20 }

    func play() {
        print("play with me")
    }
}
