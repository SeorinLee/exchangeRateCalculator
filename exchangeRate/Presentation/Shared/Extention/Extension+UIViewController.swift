//
//  Extension+UIViewController.swift
//  exchangeRate
//
//  Created by 이서린 on 7/10/25.
//


import UIKit

extension UIViewController {
    func showAlert() {
        let alert = UIAlertController(title: "오류", message: "숫자만 입력해주세요.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default))
        self.present(alert, animated: true)
    }
}
