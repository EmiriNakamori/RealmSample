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
    let medicine = Medicine()


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
            medicine.name = "頭痛薬A"
            medicineSet.medicine = medicine
            realm.add(medicineSet)


            let results = realm.objects(MedicineSet.self)
            let result = realm.objects(Medicine.self)
            print(results)
            print(result)
        }

    }

    @IBAction func tapMedicineB(_ sender: Any) {

        let realm = try! Realm()
        try! realm.write {
            medicine.name = "頭痛薬B"
            medicineSet.medicine = medicine
            realm.add(medicine)


            let results = realm.objects(MedicineSet.self)
            let result = realm.objects(Medicine.self)
            print(results)
            print(result)
        }

    }


    @IBAction func tapStar(_ sender: Any) {

        medicineSet.name = setNameTextField.text ?? ""


        print(medicineSet)
    }

}

