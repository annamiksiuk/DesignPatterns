//
//  SimpleFamilyBuilder.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/21/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

class SimpleFamilyBuilder: FamilyBuilder {
    func buildDad() {
        family.dad = Father()
    }

    func buildMum() {
        family.mum = Mum()
    }

    func buildChild(gender: Gender) {
        switch gender {
        case .male:
            family.children.append(Boy())
        case .female:
            family.children.append(Girl())
        }
    }

    func buildGranny() {
        family.granny = Granny()
    }

    func getFamily() -> SimpleFamily {
        return family
    }
    
    private let family = SimpleFamily()
}
