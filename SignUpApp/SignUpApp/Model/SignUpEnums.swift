//
//  SceneTitle.swift
//  SignUpApp
//
//  Created by jinseo park on 3/29/21.
//

import Foundation


enum SceneTitle : CustomStringConvertible {
    case signUp
    case personalInfo
    case interests
    
    var description: String {
        switch self {
        case .signUp :
            return "회원가입"
        case .personalInfo :
            return "개인정보"
        case .interests :
            return "관심사"
        }
    }
}

enum URL_Info : CustomStringConvertible {
    case url
    
    var description: String {
        switch self {
        case .url :
            return "https://8r6ruzgzve.execute-api.ap-northeast-2.amazonaws.com/default/SwiftCamp"
        }
    }
    
}
