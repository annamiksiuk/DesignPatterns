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
        let littleGirl = Girl()
        littleGirl.getCare(from: getCaringRelative(place: "home"))
    }

    private func getCaringRelative(place: String) -> Caring {
        if place == "home" {
            return Mum()
        } else {
            return Granny()
        }
    }
}

extension Girl {
    func getCare(from relative: Caring) {
        relative.getFood().eat()
        relative.getToy().play()
    }
}
