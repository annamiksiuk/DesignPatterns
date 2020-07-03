//
//  Prototype.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/28/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

class Prototype: Pattern {
    func runCode() {
        let prototypeFamily = SimpleFamily()
        prototypeFamily.dad = Father()
        prototypeFamily.mum = Mum()
        prototypeFamily.children.append(Girl())

        let anotherFamily = prototypeFamily.copy() as! SimpleFamily
        
        prototypeFamily.children.append(Boy())

        print(prototypeFamily.aboutMe())
        print(anotherFamily.aboutMe())
    }
}

extension SimpleFamily: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return type(of: self).init(dad: dad, mum: mum, children: children, granny: granny)
    }
}
