//
//  UserDefaultsManager.swift
//  Square1Cities
//
//  Created by Edwin Weru on 13/12/2021.
//

import Foundation
class UserDefaultsManager {
    
    enum Key: String {
        case showCountry
        case searchFilter
        case pageNumber
    }
    
    static let shared: UserDefaultsManager = {
        return UserDefaultsManager()
    }()
    
    
    func getSearchFilter() -> String? {
        return UserDefaults.standard.string(forKey: Key.searchFilter.rawValue)
    }
    
    func setSearchFilter(token: String) {
        UserDefaults.standard.set(token, forKey: Key.searchFilter.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    func setShowCountry(show: Bool = false) {
        UserDefaults.standard.set(show, forKey: Key.showCountry.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    func getShowCountry() -> Bool {
        return UserDefaults.standard.bool(forKey: Key.showCountry.rawValue)
    }
    
    func setPageNumber(page: Int = 1) {
        UserDefaults.standard.set(page, forKey: Key.pageNumber.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    func getPageNumber() -> Int {
        return UserDefaults.standard.integer(forKey: Key.pageNumber.rawValue)
    }
    
}
