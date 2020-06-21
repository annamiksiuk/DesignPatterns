//
//  FamilyBuilder.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/21/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

enum Gender {
    case male
    case female
}

protocol FamilyBuilder {
    func buildDad()
    func buildMum()
    func buildChild(gender: Gender)
    func buildGranny()
}
