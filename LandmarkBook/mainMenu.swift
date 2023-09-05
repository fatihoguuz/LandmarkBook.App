//
//  mainMenu.swift
//  LandmarkBook
//
//  Created by Fatih Oğuz on 4.09.2023.
//

import UIKit

class mainMenu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func iPhoneButton(_ sender: Any) {
        performSegue(withIdentifier: "iPhone", sender: nil)
    }
    
    @IBAction func macbookButton(_ sender: Any) {
        performSegue(withIdentifier: "macbook", sender: nil)
    }
    
    
    @IBAction func ipadButoon(_ sender: Any) {
        performSegue(withIdentifier: "ipad", sender: nil)
    }
    
    @IBAction func accessoriesButton(_ sender: Any){
        performSegue(withIdentifier: "accessories", sender: nil)
    }
}
