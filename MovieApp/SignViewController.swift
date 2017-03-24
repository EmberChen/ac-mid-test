//
//  SignViewController.swift
//  MovieApp
//
//  Created by Ember on 2017/3/24.
//  Copyright © 2017年 Ember. All rights reserved.
//

import UIKit

class SignViewController: UIViewController {


    
    @IBOutlet weak var signTextView: UITextView!
    @IBOutlet weak var signTextField: UITextField!
    @IBOutlet weak var signWarnLabel: UILabel!

    var signCount = 1
    
    @IBAction func textChange(_ sender: UITextField) {
        signWarnLabel.text = ""
    }
    
    @IBAction func signButton(_ sender: UIButton) {
        checkTextField()
    }
    
    func checkTextField(){
        if signTextField.text == ""{
            signWarnLabel.text = "名字不能留白"
        }else if signCount > 3{
            signWarnLabel.text = "只能簽三筆"
        }else{
            signTextView.text.append(signTextField.text! + "\n")
            signTextField.text = ""
            signCount += 1
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        signTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
