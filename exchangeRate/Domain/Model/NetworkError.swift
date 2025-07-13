//
//  NetworkError.swift
//  exchangeRate
//
//  Created by 이서린 on 7/14/25.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidStatusCode(Int)
    case decodingError(Error)
    case unknown(Error)
}
