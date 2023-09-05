//
//  accessoriesMenu.swift
//  LandmarkBook
//
//  Created by Fatih Oğuz on 4.09.2023.
//

import UIKit

class accessoriesMenu: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        landmarkNames.append("Airpods")
        landmarkNames.append("Airpods Max")
        landmarkNames.append("Apple Watch")
        landmarkNames.append("Apple Pencil")
        
        
        landmarkImages.append(UIImage(named: "airpods")!)
        landmarkImages.append(UIImage(named: "airpods max")!)
        landmarkImages.append(UIImage(named: "apple watch")!)
        landmarkImages.append(UIImage(named: "apple pencil")!)
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
        
        performSegue(withIdentifier: "accessoriesVS", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "accessoriesVS"{
            let destinationVS = segue.destination as! accessoriesVS
            destinationVS.selectedLandmarkName = chosenLandmarkName
            destinationVS.selectedLandmarkImage = chosenLandmarkImage
        }
    }

}
