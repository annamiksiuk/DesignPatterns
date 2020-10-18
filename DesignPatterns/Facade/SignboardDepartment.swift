//
//  SignboardDepartment.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 10/18/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class SignboardDepartment {
    static let shared = SignboardDepartment()

    func registerTitle(_ title: String) {
        signboards.append(title)
    }

    private init() {
    }

    private (set) var signboards = [String]()
}
