//
//  CodeView.swift
//  ViewCodeUIKit
//
//  Created by Jaber Shamali on 08/12/21.
//

import UIKit

protocol CodeView{
    func buildHierarchy()
    func configConstraints()
    func additionalConfig()
    func setupView()
}

extension CodeView{
    func setupView(){
        buildHierarchy()
        configConstraints()
        additionalConfig()
    }
}
