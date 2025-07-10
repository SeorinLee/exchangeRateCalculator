//
//  BaseView.swift
//  exchangeRate
//
//  Created by 이서린 on 7/10/25.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureView() {
        self.backgroundColor = .systemBackground
    }
    
    func setConstraints() {
        
    }
}
