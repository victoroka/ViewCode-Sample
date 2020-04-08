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
        view.translatesAutoresizingMaskIntoConstraints = false
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
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -25).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupAdditionalConfigurarion() {
        backgroundColor = .darkGray
    }
    
}
