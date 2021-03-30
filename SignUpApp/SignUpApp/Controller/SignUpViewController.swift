//
//  ViewController.swift
//  SignUpApp
//
//  Created by jinseo park on 3/29/21.
//

import UIKit

class SignUpViewController : UIViewController {
    
    var sceneTitleLabel : SceneTitleLabel!
    
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
    }
    
}

