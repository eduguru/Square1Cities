//
//  CityViewCell.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import UIKit

class CityViewCell: UITableViewCell {
    
    @IBOutlet weak var lbl_city: UILabel!
    @IBOutlet weak var lbl_localName: UILabel!
    @IBOutlet weak var lbl_country: UILabel!
    
    public static let cellReuseIdentifier: String = "CityViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public static func nib() -> UINib {
        return UINib(nibName: "CityViewCell", bundle: nil)
    }
    
}
