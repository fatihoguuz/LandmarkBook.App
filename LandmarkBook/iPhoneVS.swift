//
//  DetailVS.swift
//  LandmarkBook
//
//  Created by Fatih Oğuz on 4.09.2023.
//

import UIKit

class iPhoneVS: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
   
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
        imageView.isUserInteractionEnabled = true
        
        
        /*
         var isApplexs = true
         var isApple11 = true
         var isApple12 = true
         var isApple13 = true
         var isApple14 = true
         
         imageView.isUserInteractionEnabled = true
         let gestureRecognizerxs = UITapGestureRecognizer(target: self, action: #selector(changePicxs))
         imageView.addGestureRecognizer(gestureRecognizerxs)
         
         imageView.isUserInteractionEnabled = true
         let gestureRecognizer11 = UITapGestureRecognizer(target: self, action: #selector(changePic11))
         imageView.addGestureRecognizer(gestureRecognizer11)
         
         imageView.isUserInteractionEnabled = true
         let gestureRecognizer12 = UITapGestureRecognizer(target: self, action: #selector(changePic12))
         imageView.addGestureRecognizer(gestureRecognizer12)
         
         imageView.isUserInteractionEnabled = true
         let gestureRecognizer13 = UITapGestureRecognizer(target: self, action: #selector(changePic13))
         imageView.addGestureRecognizer(gestureRecognizer13)
         let gestureRecognizer14 = UITapGestureRecognizer(target: self, action: #selector(changePic14))
         imageView.addGestureRecognizer(gestureRecognizer14)
         
         
         }
         @objc func changePicxs() {
         if isApplexs == true {
         imageView.image = UIImage(named: "iPhoneXS")
         textLabel.text = "iPhone XS"
         isApplexs = true
         } else  {
         imageView.image = UIImage(named: "iPhoneXSe")
         textLabel.text = "iPhone XS"
         isApplexs = true
         }
         }
         
         
         @objc func changePic11() {
         if isApple11 == true {
         imageView.image = UIImage(named: "iPhone 11")
         textLabel.text = "iPhone 11"
         isApple11 = false
         
         }else {
         imageView.image = UIImage(named: "iPhone 11e")
         textLabel.text = "iPhone 11"
         isApple11 = true
         }
         
         }
         
         
         @objc func changePic12() {
         if isApple12 == true {
         imageView.image = UIImage(named: "iPhone 12")
         textLabel.text = "iPhone 12"
         isApple12 = false
         } else  {
         imageView.image = UIImage(named: "iPhone 12e")
         textLabel.text = "iPhone 12"
         isApple12 = true
         }
         }
         
         @objc func changePic13() {
         if isApple13 == true {
         imageView.image = UIImage(named: "iPhone 13")
         textLabel.text = "iPhone 13"
         isApple13 = false
         } else  {
         imageView.image = UIImage(named: "iPhone 13e")
         textLabel.text = "iPhone 13"
         isApple13 = true
         }
         }
         
         @objc func changePic14() {
         if isApple14 == true {
         imageView.image = UIImage(named: "iPhone 14 Pro")
         textLabel.text = "iPhone 14 Pro"
         isApple14 = false
         } else  {
         imageView.image = UIImage(named: "iPhone 14")
         textLabel.text = "iPhone 14"
         isApple14 = true
         }
         }
         
         */
    }
    
    
    
    
   
}
