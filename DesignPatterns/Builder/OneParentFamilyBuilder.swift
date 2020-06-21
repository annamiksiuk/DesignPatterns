//
//  OneParentFamilyBuilder.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/21/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

class OneParentFamilyBuilder: FamilyBuilder {
    func buildDad() {
        if family.parent == nil {
            family.parent = Father()
        }
    }
    
    func buildMum() {
        if family.parent == nil {
            family.parent = Mum()
        }
    }
    
    func buildChild(gender: Gender) {
        switch gender {
        case .male:
            family.child = Boy()
        case .female:
            family.child = Girl()
        }
    }
    
    func buildGranny() {
        family.granny = Granny()
    }
    
    func getFamily() -> OneParentFamily {
        return family
    }

    private let family = OneParentFamily()
}
