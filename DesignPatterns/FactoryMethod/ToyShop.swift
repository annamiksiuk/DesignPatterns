//
//  ToyShop.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 5/2/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

protocol ToyShop {
    func sellToy() -> Toy
}

class SportToyShop: ToyShop {
    func sellToy() -> Toy {
        return Ball()
    }
}

class KidsToyShop: ToyShop {
    func sellToy() -> Toy {
        return Doll()
    }
}
