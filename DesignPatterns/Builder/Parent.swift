//
//  Parent.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/21/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

protocol Parent {
}

extension Father: Parent, About {
    func aboutMe() -> String {
        return "Dad\n"
    }
}

extension Mum: Parent, About {
    func aboutMe() -> String {
        return "Mum\n"
    }
}
