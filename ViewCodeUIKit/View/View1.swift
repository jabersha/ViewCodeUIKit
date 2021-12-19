//
//  View1.swift
//  ViewCodeUIKit
//
//  Created by Jaber Shamali on 05/12/21.
//

import UIKit

final class View1: UIView{
    
    lazy var button : UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .gray
        view.setTitle("Teste", for: .normal)
        view.addTarget(self, action: #selector(buttonAct), for: .touchUpInside)
        return view
    }()
    
    lazy var label : UILabel = {
        let view = UILabel(frame: .zero)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.textColor = .systemGreen
        view.backgroundColor = .white
        return view
    }()
    
    lazy var image : UIImageView = {
        let img = UIImage(named: "FelipeMelo")
        let view = UIImageView.init(image: img)
        return view
    }()
    
    override init(frame: CGRect = .zero){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func buttonAct(sender: UIButton!){
        print("Som de peido RISOS RISOS")
    }
}

extension View1: CodeView{
    func buildHierarchy() {
        addSubview(label)
        addSubview(image)
        addSubview(button)
    }
    
    func configConstraints() {
        label.snp.makeConstraints { make in
            make.height.greaterThanOrEqualTo(50)
            make.topMargin.equalToSuperview().offset(20)
            make.left.right.equalToSuperview().offset(15).inset(15)
            make.bottomMargin.greaterThanOrEqualTo(image.snp.top)
        }
        image.snp.makeConstraints { make in
            make.topMargin.equalTo(label.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.bottomMargin.greaterThanOrEqualTo(button.snp.top)
            make.height.lessThanOrEqualTo(300)
            make.width.lessThanOrEqualTo(300)
        }
        button.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(60)
            make.centerX.equalToSuperview()
            make.top.equalTo(image.snp.bottom).offset(20)
            make.bottomMargin.equalToSuperview().inset(50)
        }
    }
    
    func additionalConfig() {
        label.text = "IHHHHH LIBERTADORES EU SOU TRIIIII... \nBRASILEIRAO NEM VOOU FALAR... \nCHEIRO MEU CARALHO... \nESTOU EM OUTRO PATAMARR!!!!"
        button.setTitle("SOU TRI", for: .normal)
        backgroundColor = .systemGreen

    }
    
    
}
