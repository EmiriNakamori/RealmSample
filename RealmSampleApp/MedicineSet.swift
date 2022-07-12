//
//  MedicineSet.swift
//  RealmSampleApp
//
//  Created by nakamori on 2022/07/12.
//

import RealmSwift

@objcMembers
class MedicineSet: Object {
    dynamic var id = ""
    dynamic var name = ""
    dynamic var createdAt: Date?
    dynamic var medicine: Medicine?
}
