//
//  Child.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/21/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

protocol Child {
}

struct Girl: Child, About {
    func aboutMe() -> String {
        return "Girl\n"
    }
}

struct Boy: Child, About {
    func aboutMe() -> String {
        return "Boy\n"
    }
}
