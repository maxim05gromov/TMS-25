//
//  ViewController.swift
//  HW25
//
//  Created by Максим Громов on 07.10.2024.
//

import UIKit
class Apartment: NSObject {
    var address: String
    var rent: Int
    weak var owner: Person?
    init(address: String, rent: Int) {
        self.address = address
        self.rent = rent
        print("\(address) created")
    }
    deinit {
        print("\(address) deinit")
    }
}
class Person: NSObject {
    var name: String
    var age: Int
    var apartment: Apartment?
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        print("\(name) created")
    }
    deinit {
        print("\(name) deinit")
    }
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        test()
    }
    func test() {
        let person1 = Person(name: "Ivan", age: 20)
        let person2 = Person(name: "Petr", age: 21)
        let apartment1 = Apartment(address: "Moscow", rent: 1000)
        let apartment2 = Apartment(address: "Saint Petersburg", rent: 2000)
        person1.apartment = apartment1
        apartment1.owner = person1
        person2.apartment = apartment2
        apartment2.owner = person2
        
    }

}

