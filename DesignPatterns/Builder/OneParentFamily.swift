//
//  OneParentFamily.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 6/21/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

import Foundation

class OneParentFamily {
    var parent: (Parent & About)?
    var child: (Child & About)?
    var granny: Granny?
}

extension OneParentFamily: About {
    func aboutMe() -> String {
        var desc = "About this one-parent family:\n"
        desc += parent?.aboutMe() ?? ""

        if granny != nil {
            desc += "Granny\n"
        }

        desc += child?.aboutMe() ?? ""
        
        return desc
    }
}
