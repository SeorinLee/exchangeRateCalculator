//
//  BookmarkUseCase.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation

protocol BookmarkUseCase {
    func toggleBookmark(for code: String)
    func loadBookmarkeCodes() -> Set<String>
}
