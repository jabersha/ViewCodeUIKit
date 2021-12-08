//
//  View1.swift
//  ViewCodeUIKit
//
//  Created by Jaber Shamali on 05/12/21.
//

import UIKit
import SnapKit

final class View1: UIView{
    
    lazy var button : UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .gray
        view.setTitle("Teste", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect = .zero){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension View1: CodeView{
    func buildHierarchy() {
        addSubview(button)
    }
    
    func configConstraints() {
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant:  15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
    }
    
    func additionalConfig() {
        button.setTitle("AAAA", for: .normal)
        backgroundColor = .blue

    }
    
    
}
