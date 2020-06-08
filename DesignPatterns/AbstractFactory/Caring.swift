//
//  Caring.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/6/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

protocol Caring {
    func getToy() -> Toy
    func getFood() -> Eatable
}

class Mum: Caring {
    func getToy() -> Toy {
        return Ball()
    }
    
    func getFood() -> Eatable {
        return Milk()
    }
}

class Granny: Caring {
    func getToy() -> Toy {
        return Doll()
    }
    
    func getFood() -> Eatable {
        return Candy()
    }
}
