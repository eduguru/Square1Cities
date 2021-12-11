//
//  CitiesResponse.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//
//   let citiesResponse = try? newJSONDecoder().decode(CitiesResponse.self, from: jsonData)

import Foundation
import SwiftUI

// MARK: - CitiesResponse
struct CitiesResponse: Decodable {
    let data: DataClass?
    let time: Int?
}

// MARK: - DataClass
struct DataClass: Decodable {
    let items: [Item]?
    let pagination: Pagination?
}

// MARK: - Item
struct Item: Decodable {
    let id: Int?
    let name: String?
    let localName: String?
    let lat, lng: Double?
    let createdAt: String?
    let updatedAt: String?
    let countryID: Int?
    let country: Country?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case localName = "local_name"
        case lat, lng
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case countryID = "country_id"
        case country
    }
}

// MARK: - Country
struct Country: Decodable {
    let id: Int?
    let name: String?
    let code: String?
    let createdAt, updatedAt: String?
    let continentID: Int?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case code
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case continentID = "continent_id"
    }
}

// MARK: - Pagination
struct Pagination: Decodable {
    let currentPage, lastPage, perPage, total: Int?
    
    enum CodingKeys: String, CodingKey {
        case currentPage = "current_page"
        case lastPage = "last_page"
        case perPage = "per_page"
        case total
    }
}
