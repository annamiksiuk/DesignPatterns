//
//  AbstractFactory.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/2/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

class AbstractFactory: Pattern {
    func runCode() {
        let relative = getCaringRelative(place: "home")

        let food = relative.getFood()
        food.eat()
        let toy = relative.getToy()
        toy.play()
    }

    private func getCaringRelative(place: String) -> Caring {
        if place == "home" {
            return Mum()
        } else {
            return Granny()
        }
    }
}
