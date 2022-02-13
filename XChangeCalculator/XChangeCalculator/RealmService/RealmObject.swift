//
//  RealmObject.swift
//  XChangeCalculator
//
//  Created by naseem on 12/02/2022.
//

import Foundation
import RealmSwift

class Currency: Object {
     @Persisted var currency = List<CurrencyDictionary>()
}

class CurrencyDictionary: Object {
    @Persisted var currency: String = ""
    @Persisted var rate: Double = 0.0
}
