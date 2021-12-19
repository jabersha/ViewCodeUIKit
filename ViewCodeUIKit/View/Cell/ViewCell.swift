//
//  ViewCell.swift
//  ViewCodeUIKit
//
//  Created by Jaber Shamali on 18/12/21.
//

import UIKit

final class ViewCell: UITableViewCell{
    static let identifier = "cell"
    
    
    lazy var image : UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    lazy var name : UILabel = {
        let view = UILabel(frame: .zero)
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ViewCell: CodeView{
    func buildHierarchy() {
        contentView.addSubview(image)
        contentView.addSubview(name)
    }
    
    func configConstraints() {
        image.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.topMargin.bottomMargin.equalToSuperview().inset(15)
            make.width.lessThanOrEqualTo(80)
            make.height.lessThanOrEqualTo(60)
            make.left.equalToSuperview().inset(20)
        }
        
        name.snp.makeConstraints { make in
            make.centerY.equalTo(image)
            make.width.greaterThanOrEqualTo(150)
            make.height.equalTo(40)
            make.left.equalTo(image.snp.right).offset(10)
        }
    }
    
    func additionalConfig() {
        name.textColor = .white
        backgroundColor = .systemCyan
    }
    
    
}
