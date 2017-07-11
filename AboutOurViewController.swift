
//
//  AboutOurViewController.swift
//  Lesson1
//
//  Created by BLVCK on 07.07.17.
//  Copyright © 2017 blvvvck production. All rights reserved.
//

import UIKit

class AboutOurViewController: UIViewController {
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textLabel: UILabel!
    
    var names:[String] = []
    
    var textForTextLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = textForTextLabel

        nameLable.text = "Rinat"
        nameLable.sizeToFit()
        surnameLabel.text = "Muhammetzyanov"
        surnameLabel.sizeToFit()
        birthdayLabel.text = "21/07/1998"
        cityLabel.text = "Kazan"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             return names.count
          }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
                cell.textLabel?.text = names[indexPath.row]
        
                return cell
            }
    
    let nameString = UserDefaults.standard.object(forKey: loginNameKey)
}
