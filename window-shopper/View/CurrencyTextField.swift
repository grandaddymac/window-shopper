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
    //Add currency label
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.7770066624, green: 0.7770066624, blue: 0.7770066624, alpha: 0.8442315925)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.255393401, green: 0.255393401, blue: 0.255393401, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }

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
        clipsToBounds = true
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
