//
//  ViewController.swift
//  SignUpApp
//
//  Created by jinseo park on 3/29/21.
//

import UIKit

class SignUpViewController : UIViewController, UITextFieldDelegate {
    
    let net = NetworkHandler()
    var sceneTitleLabel : SceneTitleLabel!
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var idDescriptionLabel: UILabel!
    
    @IBAction func tocuhedToNextPage(_ sender: Any) {
        
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "PersonalInfoViewController")
        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*화면 제목*/
        sceneTitleLabel = SceneTitleLabel(text: SceneTitle.signUp.description)
        self.view.addSubview(sceneTitleLabel)
        sceneTitleLabel.setAutoLayoutLabel(with : self.view)
        
        self.view.backgroundColor = .gray
        self.navigationController?.isNavigationBarHidden = true
        
        /*Delegate 설정하기*/
        idTextField.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        idDescriptionLabel.text = ""
    }
    
    /*텍스트 필드의 값이 변할 때마다 알려주는 함수.*/
    @IBAction func iDtextFieldEditingDidChange(_ sender: Any) {        
        guard let id = idTextField.text else {return}
        isAlreadyRegistered(with: id)
        
    }
    
    func isAlreadyRegistered(with id : String) {
        net.getData()
        if net.allID.contains(id) {
            idDescriptionLabel.text = "이미 있어요"
        }else{
            idDescriptionLabel.text = "만들수 있어요"
        }
        
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

