//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Chinedu Arinze on 10/4/17.
//  Copyright © 2017 Chinedu Arinze. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

        override func draw(_ rect: CGRect) {
            let size: CGFloat = 20
            let currencyLbl = UILabel(frame: CGRect(x: 5, y: ((frame.size.height / 2) - (size / 2)), width: size, height: size))
    
            currencyLbl.backgroundColor = #colorLiteral(red: 0.8535493576, green: 0.8535493576, blue: 0.8535493576, alpha: 0.8)
            currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            currencyLbl.textAlignment = .center
            currencyLbl.layer.cornerRadius = 5.0
            currencyLbl.clipsToBounds = true
            let formator = NumberFormatter()
            formator.numberStyle = .currency
            formator.locale = .current
            currencyLbl.text = formator.currencySymbol
            addSubview(currencyLbl)
        }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        }
    

    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        }
    
    }
}
