//
//  CitiesServices.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import Moya

final class CitiesService {
    
    func queryCities(reviewData: CitiesReviewData, completion: @escaping (Result<String, Error>) -> ()) {
        let provider = MoyaProvider<CitiesApi>()
        UniversalLoader().showUniversalLoadingView(true)
        
        provider.request(.queryCities(reviewData: reviewData)) { result in
            UniversalLoader().showUniversalLoadingView(false)

            switch result {
            case let .success(response):
                print("Service", response)
                let strResponse: String = String(data: response.data, encoding: .utf8) ?? ""
                completion(.success(strResponse))
              
            case let .failure(error):
            print("Service error on failure \(error)")
              completion(.failure(error))
            }
        }
        
    }
    
}
