//
//  CurrentViewSaveUseCase.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation

protocol CurrentViewSaveUseCase {
    func saveView(view: String, code: String?)
}
