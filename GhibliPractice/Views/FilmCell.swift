//
//  FilmCell.swift
//  GhibliPractice
//
//  Created by C4Q on 10/2/19.
//  Copyright © 2019 Iram Fattah. All rights reserved.
//

import UIKit

class FilmCell: UITableViewCell {

  
    @IBOutlet weak var filmImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var optionsButton: UIButton!
    
    
    @IBAction func optionsButtonClicked(_ sender: UIButton) {
        delegate?.showActionSheet(tag: sender.tag)
        
    }
    
    
    weak var delegate: FilmCellDelegate?
    
    
    
    
    
}
