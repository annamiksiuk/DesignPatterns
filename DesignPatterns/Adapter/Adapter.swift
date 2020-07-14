//
//  Adapter.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 7/14/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class Adapter: Pattern {
    func runCode() {
        let father = Father()
        let baby = Baby()

        print(baby.babyRespond())

        father.saySomething(responder: BabyRespondAdapter(babyResponder: baby, converter: Mum()))
    }
}

extension Father {
    func saySomething(responder: Responding) {
        print(responder.respond())
    }
}
