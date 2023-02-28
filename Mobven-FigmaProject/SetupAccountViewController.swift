//
//  SetupAccountViewController.swift
//  Mobven-FigmaProject
//
//  Created by Zehra on 28.02.2023.
//

import UIKit

class SetupAccountViewController: UIViewController {

    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.borderStyle = .none
        nameTextField.layer.cornerRadius = 17
        nameTextField.delegate = self
        hideKeyboard()
        
    }
    
    func hideKeyboard() {
        let tab = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tab)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    @IBAction func saveAccountInformation(_ sender: UIButton) {
        print("Clicked.")
    }
}

extension SetupAccountViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        saveAccountInformation(saveButton)
        return false
    }
}
