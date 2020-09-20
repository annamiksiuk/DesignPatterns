//
//  FactoryMethod.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 4/28/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class FactoryMethod: Pattern {
    func runCode() {
        let toy = Father().buyToy(from: getToyShop(for: "for girl"))
        toy.play()
    }

    private func getToyShop(for goal: String) -> ToyShop {
        if goal == "for sport game" {
            return SportToyShop()
        } else {
            return KidsToyShop()
        }
    }
}
