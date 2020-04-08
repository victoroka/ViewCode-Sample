//
//  ViewControllerScreen.swift
//  ViewCode-Sample
//
//  Created by Victor Oka on 08/04/20.
//  Copyright © 2020 Victor Oka. All rights reserved.
//

import UIKit

protocol CodeView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfigurarion()
    func setupView()
}

extension CodeView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfigurarion()
    }
}

final class ViewControllerScreen: UIView {
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ViewController: CodeView {
    
    func buildViewHierarchy() {
        
    }
    
    func setupConstraints() {
        
    }
    
    func setupAdditionalConfigurarion() {
        
    }
    
}
