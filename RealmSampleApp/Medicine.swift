//
//  Medicine.swift
//  RealmSampleApp
//
//  Created by nakamori on 2022/07/12.
//

import RealmSwift

@objcMembers
class Medicine: Object {
    dynamic var id = 0
    dynamic var name = ""
    dynamic var nameHira = ""
    dynamic var makerName = ""
    dynamic var makerNameHira = ""
    dynamic var isPresctiption = false
    let medicineSets = LinkingObjects(fromType: MedicineSet.self, property: "medicines")

//    override static func primaryKey() -> String? {
//        return "id"
//    }
}

