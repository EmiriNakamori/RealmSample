//
//  MedicineHistory.swift
//  RealmSampleApp
//
//  Created by nakamori on 2022/07/12.
//

import RealmSwift

@objcMembers
class MedicineHistory: Object {
    dynamic var id = ""
    dynamic var name = ""
    dynamic var updatedAt: Date?
    var medicines = List<Medicine>()
}
