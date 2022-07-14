//
//  ViewController.swift
//  RealmSampleApp
//
//  Created by nakamori on 2022/07/11.
//

import UIKit
import RealmSwift



class ViewController: UIViewController {



    let medicineSet = MedicineSet()

    @IBOutlet weak var medicineA: UIButton!
    @IBOutlet weak var medicineB: UIButton!
    @IBOutlet weak var medicineC: UIButton!
    @IBOutlet weak var medicineD: UIButton!
    @IBOutlet weak var setNameTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

    }


    func saveMedicineSet() {



    }

    @IBAction func tapMedicineA(_ sender: Any) {




        let realm = try! Realm()

        try! realm.write {
            let medicine = Medicine()
            medicine.id = 1
            medicine.name = "頭痛薬A"
            medicine.nameHira = "ずつうやくA"
            medicine.makerName = "大塚製薬"
            medicine.makerNameHira = "オオツカセイヤク"
            medicine.isPresctiption = false
            realm.add(medicine, update: .modified)
            let result = realm.objects(Medicine.self)
            print(result)
//

            medicineSet.medicines.append(medicine)
//            let someMedicines = realm.objects(Medicine.self).filter("id = 1")
//            medicineSet.medicines.append(objectsIn: someMedicines)
            realm.add(medicineSet, update: .modified)
            let results = realm.objects(MedicineSet.self)
            print(results)

        }

    }

    @IBAction func tapMedicineB(_ sender: Any) {

        let medicine = Medicine()
        medicine.id = 2
        medicine.name = "頭痛薬B"
        medicine.nameHira = "ずつうやくB"
        medicine.makerName = "製薬B"
        medicine.makerNameHira = "セイヤクB"
        medicine.isPresctiption = false


        let realm = try! Realm()
        try! realm.write {
        realm.add(medicine, update: .modified)
        let result = realm.objects(Medicine.self)
        print(result)


        medicineSet.medicines.append(medicine)
//            let someMedicines = realm.objects(Medicine.self).filter("id = 1")
//            medicineSet.medicines.append(objectsIn: someMedicines)
        realm.add(medicineSet, update: .modified)
        let results = realm.objects(MedicineSet.self)
        print(results)
        }

    }


    @IBAction func tapStar(_ sender: Any) {

//        medicineSet.name = setNameTextField.text ?? ""
//
//
//        print(medicineSet)
    }

}

