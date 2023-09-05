//
//  accessoriesVS.swift
//  LandmarkBook
//
//  Created by Fatih Oğuz on 4.09.2023.
//

import UIKit

class accessoriesVS: UIViewController {
   
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
        imageView.isUserInteractionEnabled = true
    }
    }
    

   


