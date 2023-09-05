//
//  BeginningMenu.swift
//  LandmarkBook
//
//  Created by Fatih Oğuz on 5.09.2023.
//

import UIKit

class BeginningMenu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


    @IBAction func nextButton(_ sender: Any) {
        
        performSegue(withIdentifier: "nextButton", sender: nil)
    }
    
}
