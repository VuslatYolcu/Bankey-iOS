//
//  LoginView.swift
//  Bankey
//
//  Created by Vuslat Yolcu on 9.03.2023.
//

import Foundation
import UIKit

class LoginView: UIView, UITextFieldDelegate {
    
    let userNameTextField = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
}

extension LoginView {
    
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .orange
        
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.placeholder = "Username"
        
        /*
          Protocol - Delegate Pattern
        - We are registering ourself as delegate for the text field.
        - It means that text field can send us messages if it is editing or not etc.
        - In order to implement it, we need to obey its protocols as we used in the extension UITextFieldDelegate
        */
        userNameTextField.delegate = self
    }
    
    func layout() {
        addSubview(userNameTextField)
        
        NSLayoutConstraint.activate([
            userNameTextField.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            userNameTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: userNameTextField.trailingAnchor, multiplier: 1)
        ])
    }
}

extension LoginView: UITextViewDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextField.endEditing(true)
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}
