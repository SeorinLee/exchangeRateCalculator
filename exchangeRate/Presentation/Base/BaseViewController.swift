//
//  BaseViewController.swift
//  exchangeRate
//
//  Created by 이서린 on 7/10/25.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func bind() {
        
    }
    
    func setNavigationBar(_ title: NavigationBarTitle.RawValue) {
        self.navigationItem.title = title
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
    func showAlert(_ message: String) {
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "확인", style: .default))
        present(alert, animated: true, completion: nil)
    }
}
