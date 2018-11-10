//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by gdm on 11/9/18.
//  Copyright © 2018 gdm. All rights reserved.
//

import UIKit

//Allows Interface Builder to show custom coded UI changes
@IBDesignable

class CurrencyTextField: UITextField {

    //Required for @IBDesignable
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    //Set properties of custom text field
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
