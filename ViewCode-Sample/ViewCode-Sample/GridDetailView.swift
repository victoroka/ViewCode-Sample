//
//  GridDetailView.swift
//  ViewCode-Sample
//
//  Created by Victor Oka on 09/04/20.
//  Copyright © 2020 Victor Oka. All rights reserved.
//

import UIKit

final class GridDetailView: UIView {
    
    lazy var horizontalContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.distribution = .fillProportionally
        view.spacing = 8
        view.axis = .horizontal
        view.alignment = .center
        return view
    }()
    
    lazy var verticalContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.distribution = .fillEqually
        view.spacing = 8
        view.axis = .vertical
        return view
    }()
    
    lazy var buttonContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.distribution = .fillEqually
        view.spacing = 8
        view.axis = .horizontal
        return view
    }()
    
    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var descriptionLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .green
        return view
    }()
    
    lazy var dislikeButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        return view
    }()
    
    lazy var likeButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .systemBlue
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

extension GridDetailView: CodeView {
    
    func buildViewHierarchy() {
        buttonContainer.addArrangedSubview(dislikeButton)
        buttonContainer.addArrangedSubview(likeButton)
        
        verticalContainer.addArrangedSubview(titleLabel)
        verticalContainer.addArrangedSubview(descriptionLabel)
        verticalContainer.addArrangedSubview(buttonContainer)
        
        horizontalContainer.addArrangedSubview(imageView)
        horizontalContainer.addArrangedSubview(verticalContainer)
        
        addSubview(horizontalContainer)
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { (make) in
            make.width.height.equalTo(118)
        }
        
        horizontalContainer.snp.makeConstraints { (make) in
            make.left.top.right.equalToSuperview()
        }
    }
    
    func setupAdditionalConfigurarion() {}
    
}

