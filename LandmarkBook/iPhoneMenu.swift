//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Fatih Oğuz on 4.09.2023.
//
import UIKit

class iPhoneMenu: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
       
        landmarkNames.append("iPhone XS")
        landmarkNames.append("iPhone 11")
        landmarkNames.append("iPhone 12")
        landmarkNames.append("iPhone 13")
        landmarkNames.append("iPhone 14 Pro")
        
        landmarkImages.append(UIImage(named: "iPhoneXS")!)
        landmarkImages.append(UIImage(named: "iPhone 11")!)
        landmarkImages.append(UIImage(named: "iPhone 12")!)
        landmarkImages.append(UIImage(named: "iPhone 13")!)
        landmarkImages.append(UIImage(named: "iPhone 14 Pro")!)
        
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.right)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "SecondVS", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondVS"{
            let destinationVS = segue.destination as! iPhoneVS
            destinationVS.selectedLandmarkName = chosenLandmarkName
            destinationVS.selectedLandmarkImage = chosenLandmarkImage
        }
    }
}
