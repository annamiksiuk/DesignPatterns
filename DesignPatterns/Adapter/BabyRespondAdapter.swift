//
//  BabyRespondAdapter.swift
//  DesignPatterns
//
//  Created by Anna Miksiuk on 7/14/20.
//  Copyright © 2020 Anna Miksiuk. All rights reserved.
//

class BabyRespondAdapter {
    init(babyResponder: BabyResponding, converter: RespondConverter) {
        self.babyResponder = babyResponder
        self.converter = converter
    }

    private let babyResponder: BabyResponding
    private let converter: RespondConverter
}

extension BabyRespondAdapter: Responding {
    func respond() -> String {
        return converter.convertRespond(babyResponder.babyRespond())
    }
}
