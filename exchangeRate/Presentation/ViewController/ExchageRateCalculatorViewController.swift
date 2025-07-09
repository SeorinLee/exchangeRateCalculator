//
//  ExchageRateCalculatorViewController.swift
//  exchangeRate
//
//  Created by 이서린 on 7/9/25.
//

import UIKit

import SnapKit

import Then

import RxSwift
import RxCocoa

final class ExchageRateCalculatorViewController: UIViewController {
    
    let exchangeRateView = ExchangeRateView()
    
    override func loadView() {
        super.loadView()
        view = exchangeRateView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBar()
    }
    
    private func setNavigationBar() {
        self.navigationItem.title = "환율 계산기"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
}
