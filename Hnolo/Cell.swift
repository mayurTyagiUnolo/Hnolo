//
//  cell.swift
//  Hnolo
//
//  Created by Mayur Tyagi on 26/03/25.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var lat: UILabel!
    @IBOutlet weak var lon: UILabel!
    @IBOutlet weak var date: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
   
}
