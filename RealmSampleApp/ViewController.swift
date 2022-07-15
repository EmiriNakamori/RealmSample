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


    let realm = try! Realm()

    @IBOutlet weak var medicineA: UIButton!
    @IBOutlet weak var medicineB: UIButton!
    @IBOutlet weak var medicineC: UIButton!
    @IBOutlet weak var medicineD: UIButton!
    @IBOutlet weak var setNameTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func tapMedicineA(_ sender: Any) {

        try! realm.write {
            let medicine = Medicine()

            medicine.id = 1
            medicine.name = "頭痛薬A"
            medicine.nameHira = "ずつうやくA"
            medicine.makerName = "大塚製薬"
            medicine.makerNameHira = "オオツカセイヤク"
            medicine.isPresctiption = false
            realm.add(medicine)

            medicineSet.medicines.append(medicine)

            realm.add(medicineSet)

        }

    }

    @IBAction func tapMedicineB(_ sender: Any) {




        try! realm.write {
            let medicine = Medicine()
            medicine.id = 2
            medicine.name = "頭痛薬B"
            medicine.nameHira = "ずつうやくB"
            medicine.makerName = "製薬B"
            medicine.makerNameHira = "セイヤクB"
            medicine.isPresctiption = false

            realm.add(medicine)

            medicineSet.medicines.append(medicine)

        }

    }


    @IBAction func tapStar(_ sender: Any) {

    }

    @IBAction func tapDelete(_ sender: Any) {
        try! realm.write {
//        let searchDeleteMedicineA = realm.objects(Medicine.self).filter("id = 1")

//            realm.delete(medicineSet.medicines[0])
            guard let index =         medicineSet.medicines.firstIndex (where: { medicine in
                medicine.id == 1
            }) else {
                return
            }
            medicineSet.medicines.remove(at: index)
        }

    }


    @IBAction func tapConfirm(_ sender: Any) {
        let resultMedicine = realm.objects(Medicine.self)
        print(resultMedicine)
        let resultMedicineSet = realm.objects(MedicineSet.self)
        print(resultMedicineSet)
    }


}

