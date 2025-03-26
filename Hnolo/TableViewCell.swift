//
//  TableViewCell.swift
//  Hnolo
//
//  Created by Mayur Tyagi on 26/03/25.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var lat: UILabel!
    @IBOutlet weak var lon: UILabel!
    @IBOutlet weak var date: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
