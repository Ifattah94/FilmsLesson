//
//  SettingsVC.swift
//  GhibliPractice
//
//  Created by C4Q on 10/4/19.
//  Copyright © 2019 Iram Fattah. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {

    
    @IBOutlet weak var darkModeSwitch: UISwitch!
    weak var delegate: SettingsDelegate?
    var switchOnOrOff = false
    
    
    enum DarkModeSetting: String {
        case on
        case off
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        switch switchOnOrOff {
        case true :
            self.darkModeSwitch.isOn = true
        case false:
            self.darkModeSwitch.isOn = false
        }
    }
    
    
    
    
    @IBAction func switchPressed(_ sender: UISwitch) {
        switch sender.isOn {
        
        case true:
            setDarkMode(setting: .on)
        case false:
            setDarkMode(setting: .off)
        }
        
    }
    
    
    private func setDarkMode(setting: DarkModeSetting) {
        switch setting {
        case .on :
            delegate?.darkModeOn()
        case .off:
            delegate?.darkModeOff()
        }
    }
    

    



}
