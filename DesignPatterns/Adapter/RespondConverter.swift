//
//  RespondConverter.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 7/14/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

protocol RespondConverter {
    func convertRespond(_ text: String) -> String
}

extension Mum: RespondConverter {
    func convertRespond(_ text: String) -> String {
        return "He said hi ;)"
    }
}
