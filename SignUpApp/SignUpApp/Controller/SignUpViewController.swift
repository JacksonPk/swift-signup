//
//  ViewController.swift
//  SignUpApp
//
//  Created by jinseo park on 3/29/21.
//

import UIKit

class SignUpViewController : UIViewController, UITextFieldDelegate {
    
    var sceneTitleLabel : SceneTitleLabel!
    
    @IBOutlet weak var idTextField: UITextField!
    @IBAction func tocuhedToNextPage(_ sender: Any) {
        
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "PersonalInfoViewController")
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*화면 제목*/
        sceneTitleLabel = SceneTitleLabel(text: SceneTitle.SignUp.rawValue)
        self.view.addSubview(sceneTitleLabel)
        sceneTitleLabel.setAutoLayoutLabel(with : self.view)
        
        
        self.view.backgroundColor = .gray
        self.navigationController?.isNavigationBarHidden = true
        
        /*Delegate 설정하기*/
        idTextField.delegate = self
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        }
    
    @objc
    func keyboardWillShow(_ sender: Notification) {
        self.view.frame.origin.y = -150
    }
    
    @objc
    func keyboardWillHide(_ sender: Notification) {
        self.view.frame.origin.y = 0
    }
    
    
}

