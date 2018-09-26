//
//  TableViewCell.swift
//  HelloWorld
//
//  Created by stefano vecchiati on 18/09/2018.
//  Copyright © 2018 co.eggon. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var prova1 : Int!
    var prova2 : Int?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profilePicture: UIImageView!
    
    static let kidentifier = "TableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        prova1 = 1
        if prova2 != nil {
            nameLabel.text = "\(prova2)"
        }
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
