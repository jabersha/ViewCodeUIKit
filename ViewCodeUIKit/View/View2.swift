//
//  View2.swift
//  ViewCodeUIKit
//
//  Created by Jaber Shamali on 18/12/21.
//

import UIKit

final class View2: UIStackView {
    
    let arrayNames = ["DayPay","DayCu","DayCovid", "DayCoin"]
    
    let table : UITableView = {
        let tableView = UITableView()
        tableView.register(ViewCell.self, forCellReuseIdentifier: ViewCell.identifier)
        return tableView
    }()
    
    override init(frame: CGRect = .zero){
        super.init(frame: frame)
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension View2: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ViewCell.identifier, for: indexPath) as! ViewCell
        cell.name.text = arrayNames[indexPath.row]
        cell.image.image = UIImage(named: "FelipeMelo")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}

extension View2: CodeView{
    func buildHierarchy() {
        addSubview(table)
    }
    
    func configConstraints() {
        table.snp.makeConstraints { make in
            make.topMargin.equalToSuperview().inset(15)
            make.bottom.equalToSuperview().inset(30)
            make.left.right.equalToSuperview().inset(15)
        }
    }
    
    func additionalConfig() {
        backgroundColor = .white
        table.dataSource = self
        table.delegate = self
        table.separatorStyle = .none
        table.backgroundColor = .link
    }
    
    
}
