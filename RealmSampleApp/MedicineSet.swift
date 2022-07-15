//
//  MedicineSet.swift
//  RealmSampleApp
//
//  Created by nakamori on 2022/07/12.
//

import RealmSwift

@objcMembers
class MedicineSet: Object {
    dynamic var id = 0
    dynamic var name = ""
//    dynamic var createdAt: Date = Date()
    dynamic var isFavorite: Bool = false
    var medicines = List<Medicine>()

}
