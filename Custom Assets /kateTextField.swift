//
//  kateTextField.swift
//  seanAllenTutorial
//
//  Created by Kate Roberts on 22/09/2021.
//

import UIKit

class kateTextField: UITextField {

    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints   =   false
        
        layer.cornerRadius = 20
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor       =   .label
        tintColor       =   .label
        textAlignment   =   .center
        font            =   UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize =   12
        
        backgroundColor     =   .tertiarySystemBackground
        autocorrectionType  =   .no
        placeholder         =   "Enter username"
    }
    
}
