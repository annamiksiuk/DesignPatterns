//
//  SimpleFamily.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/21/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

class SimpleFamily {
    var dad: Father?
    var mum: Mum?
    var children = [Child & About]()
    var granny: Granny?
}

extension SimpleFamily: About {
    func aboutMe() -> String {
        var desc = "About this simple family:\n"
        if dad != nil {
            desc += "Dad\n"
        }
        if mum != nil {
            desc += "Mum\n"
        }
        if granny != nil {
            desc += "Granny\n"
        }
        children.forEach {
            desc += $0.aboutMe()
        }
        return desc
    }
}
