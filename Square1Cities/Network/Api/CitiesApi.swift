//
//  CityApi.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import Moya

enum CitiesApi {
    case queryCities(reviewData: CitiesReviewData)
}

extension CitiesApi: TargetType {
    var baseURL: URL {
        let url: URL = URL(string: "http://connect-demo.mobile1.io/")!
        
        return url
    }
    
    var path: String {
        switch self {
        case .queryCities(_):
            return "square1/connect/v1/city"
        }
    }
    
    var method: Method {
        switch self {
        case .queryCities(_):
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case let .queryCities(reviewData: reviewData):
            let includeTerm = reviewData.showCountry ? "country" : ""
            
            let params: [String: String] = [
                "filter[0][name][contains]": reviewData.filter,
                "page": "\(reviewData.page)",
                "include": includeTerm
            ]
            
            return .requestParameters(parameters: params, encoding: JSONEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        let headers: [String: String] = [:]
        
        return headers
    }
    
    
}
