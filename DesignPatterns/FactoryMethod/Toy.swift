//
//  Toy.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 5/2/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

protocol Toy {
    func play()
}

class Doll: Toy {
    func play() {
        print("mama-mama")
    }
}

class Ball: Toy {
    func play() {
        print("play with me")
    }
}
