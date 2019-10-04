//
//  Protocols.swift
//  GhibliPractice
//
//  Created by C4Q on 10/4/19.
//  Copyright © 2019 Iram Fattah. All rights reserved.
//

import Foundation

protocol FilmCellDelegate: AnyObject {
    func showActionSheet(tag: Int)
}


protocol SettingsDelegate: AnyObject {
    func darkModeOn()
    func darkModeOff()
    
}
