//
//  Medicine.swift
//  RealmSampleApp
//
//  Created by nakamori on 2022/07/12.
//

import RealmSwift

@objcMembers
class Medicine: Object {
    dynamic var id = ""
    dynamic var name = ""
    dynamic var nameHira = ""
    dynamic var makerNameHira = ""
    dynamic var isPresctiption = false
}

