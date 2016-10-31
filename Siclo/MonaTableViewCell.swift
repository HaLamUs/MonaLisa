//
//  MonaTableViewCell.swift
//  Siclo
//
//  Created by Ha Lam on 10/31/16.
//  Copyright © 2016 Siclo. All rights reserved.
//

import UIKit

class MonaTableViewCell: UITableViewCell {

    //MARK: IBOutlets
    
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var titileLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    //MARK: Functional
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func initDataForCell(title: String, subTitile: String, image: UIImage?) {
        self.titileLabel?.text = title
        self.detailLabel?.text = subTitile
        self.cellImageView?.image = image
    }
}
