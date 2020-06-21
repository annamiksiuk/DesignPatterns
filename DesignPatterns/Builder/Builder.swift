//
//  Builder.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/21/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

class Builder: Pattern {
    func runCode() {
        let creator = FamilyCreator()
        let simpleFamilyBuilder = SimpleFamilyBuilder()

        creator.createSimpleFamily(from: simpleFamilyBuilder)
        let simpleFamily = simpleFamilyBuilder.getFamily()
        print(simpleFamily.aboutMe())
        
        let oneParentFamilyBuilder = OneParentFamilyBuilder()
        creator.createOneParentFamily(from: oneParentFamilyBuilder)
        
        let oneParentFamily = oneParentFamilyBuilder.getFamily()
        print(oneParentFamily.aboutMe())
    }
}

class FamilyCreator {
    func createSimpleFamily(from builder: FamilyBuilder) {
        builder.buildDad()
        builder.buildMum()
        builder.buildChild(gender: .male)
    }

    func createOneParentFamily(from builder: FamilyBuilder) {
        builder.buildDad()
        builder.buildChild(gender: .female)
        builder.buildGranny()
    }
}
