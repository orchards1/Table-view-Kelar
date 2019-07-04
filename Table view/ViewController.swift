//
//  ViewController.swift
//  Table view
//
//  Created by Michael Louis on 04/07/19.
//  Copyright © 2019 Michael Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    
    var nameArray = ["Jason","Dea","Edvyn"]
    var numberArray = [21312,31231,21122]
    
    var contact = [Contact]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let  cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? TableViewCell
        
        cell?.nameLabel.text = contact[indexPath.row].name
        cell?.numberLabel.text = "\(contact[indexPath.row].number)"
       
        return cell!
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        for i in 0..<nameArray.count
        {
            let data = Contact(name: nameArray[i], number: numberArray[i])
            contact.append(data)
            
        }
    }


}

