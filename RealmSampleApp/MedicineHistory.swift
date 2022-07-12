//
//  MedicineHistory.swift
//  RealmSampleApp
//
//  Created by nakamori on 2022/07/12.
//

import RealmSwift

class MedicineHistory: Object {
    @objc dynamic var id = ""
    @objc dynamic var name = ""
    @objc dynamic var updatedAt: Date?
    @objc dynamic var medicine: Medicine?
}
