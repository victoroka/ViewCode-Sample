//
//  ViewControllerScreen.swift
//  ViewCode-Sample
//
//  Created by Victor Oka on 08/04/20.
//  Copyright © 2020 Victor Oka. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView {
    
    private lazy var gridContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8
        return view
    }()
    
    private lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Fetch", for: .normal)
        view.layer.cornerRadius = 5
        return view
    }()
    
    let detailBox = GridDetailView()
    let leftBox = GridBoxView()
    let rightBox = GridBoxView()
    
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
        addSubview(detailBox)
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
        addSubview(button)
    }
    
    func setupConstraints() {
        
        detailBox.snp.makeConstraints { (make) in
            make.top.equalTo(safeAreaLayoutGuide.snp.topMargin).inset(50)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(150)
            make.centerX.equalToSuperview()
        }
        
        gridContainer.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(300)
            make.centerY.equalToSuperview()
        }
        
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
