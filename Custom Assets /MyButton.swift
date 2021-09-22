//
//  MyButton.swift
//  seanAllenTutorial
//
//  Created by Kate Roberts on 22/09/2021.
//

import UIKit

class MyButton: UIButton {

    override init(frame: CGRect){
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColour: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColour
        self.titleLabel?.text = title
        configure()
    }
    
    private func configure(){
        layer.cornerRadius      =   20
        titleLabel?.textColor   =   .white
        titleLabel?.font        =   UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
