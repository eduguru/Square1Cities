//
//  CitiesListViewModel.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import RxSwift

final class CitiesListViewModel {
    var updateView: ((CitiesResponse?, [Item])-> Void)? = {_, _ in }
    
    var responseObject: CitiesResponse?
    var arrayList: [Item] = []
    
    var page: Int = 1;
    var total: Int = 1;
    var search: String = "";
    
    init() {
        getData()
    }
    
    public func loadMore() {
        getData()
    }
    
    private func getData() {
        let review: CitiesReviewData = CitiesReviewData(
            showCountry: UserDefaultsManager.shared.getShowCountry(),
            filter: UserDefaultsManager.shared.getSearchFilter() ?? "",
            page: UserDefaultsManager.shared.getPageNumber()
        )
        
        page += 1
        
        CitiesService().queryCities(reviewData: review, completion: { [weak self] result in
            guard let strongSelf = self else { return }
            switch result {
            case .success(let response):
                print("arrayResponse \(response)")
                strongSelf.responseObject = response
                //strongSelf.arrayList = strongSelf.responseObject?.data?.items ?? []
                strongSelf.arrayList.append(contentsOf: strongSelf.responseObject?.data?.items ?? [])
                
                strongSelf.total = strongSelf.responseObject?.data?.pagination?.total ?? 1
                strongSelf.updateView?(strongSelf.responseObject, strongSelf.arrayList)
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }
}
