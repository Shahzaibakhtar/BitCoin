//
//  ViewController.swift
//  BitCoin
//
//  Created by Shahzaib Akhtar on 9/19/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var pswrdText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pswrdText.delegate = self
        self.userNameText.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }
}
