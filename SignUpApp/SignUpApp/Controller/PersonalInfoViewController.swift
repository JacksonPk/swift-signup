//
//  PesonalInfoVC.swift
//  SignUpApp
//
//  Created by jinseo park on 3/29/21.
//

import UIKit

class PersonalInfoViewController: UIViewController {

    var sceneTitleLabel : SceneTitleLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneTitleLabel = SceneTitleLabel(text: SceneTitle.personalInfo.description)
        self.view.addSubview(sceneTitleLabel)
        sceneTitleLabel.setAutoLayoutLabel(with : self.view)
        
    }

}
