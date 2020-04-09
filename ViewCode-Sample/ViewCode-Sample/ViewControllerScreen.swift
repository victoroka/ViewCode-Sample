//
//  ViewControllerScreen.swift
//  ViewCode-Sample
//
//  Created by Victor Oka on 08/04/20.
//  Copyright © 2020 Victor Oka. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView {
    
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Fetch", for: .normal)
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ViewControllerScreen: CodeView {
    
    func buildViewHierarchy() {
        addSubview(button)
    }
    
    func setupConstraints() {
        button.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.bottom.equalToSuperview().inset(25)
            make.height.equalTo(50)
        }
    }
    
    func setupAdditionalConfigurarion() {
        backgroundColor = .darkGray
    }
    
}
