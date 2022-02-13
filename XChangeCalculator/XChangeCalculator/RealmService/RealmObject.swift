//
//  RealmObject.swift
//  XChangeCalculator
//
//  Created by naseem on 12/02/2022.
//

import Foundation
import RealmSwift

class Currency: Object {
     dynamic var currency = List<CurrencyDictionary>()
}

class CurrencyDictionary: Object {
    @objc dynamic var currency: String = ""
    @objc dynamic var rate: Double = 0.0
}
