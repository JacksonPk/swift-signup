//
//  SelectIntersetsVC.swift
//  SignUpApp
//
//  Created by jinseo park on 3/29/21.
//

import UIKit

class SelectIntersetsViewController: UIViewController {

    var sceneTitleLabel : SceneTitleLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneTitleLabel = SceneTitleLabel(text: SceneTitle.SelectInterests.rawValue)
        self.view.addSubview(sceneTitleLabel)
        sceneTitleLabel.setAutoLayoutLabel(with : self.view)
        
    }
    
}
