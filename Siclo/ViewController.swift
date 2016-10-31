//
//  ViewController.swift
//  Siclo
//
//  Created by Ha Lam on 10/31/16.
//  Copyright © 2016 Siclo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet weak var monaTableView: UITableView! {
        didSet {
            monaTableView.delegate = self
            monaTableView.dataSource = self
        }
    }
    
    //MARK: Properties
    
    let imageForCell = #imageLiteral(resourceName: "MonaLisa")
    
    //MARK: View Life Circle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = monaTableView.dequeueReusableCell(withIdentifier: "MonaTableViewCell", for: indexPath) as! MonaTableViewCell
        cell.initDataForCell(title: "Mona Lisa",
                             subTitile: "Leonardo Da Vinci, Louvre",
                             image: imageForCell)
        return cell
        
    }
}

