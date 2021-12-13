//
//  CitiesCoordinator.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import UIKit

class CitiesCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    
    var citiesViewModel: CitiesViewModel?
        
    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.citiesViewModel = CitiesViewModel(navigatioController: navigationController)
    }
    
    deinit {
        print("deinit")
    }
    
    func start() {
        let nextVc = CitiesListViewController()
        nextVc.coordinator = self
        nextVc.model = citiesViewModel
        nextVc.goToFilter = applyFilter
        
        navigationController.pushViewController(nextVc, animated: false)
    }
    
    func applyFilter() {
        let nextVc = FilterViewController()
        nextVc.coordinator = self
        nextVc.applyFilterSet = filterResult
        
        navigationController.pushViewController(nextVc, animated: false)
    }
    
    private func filterResult(filter: CitiesReviewData) {
        print(filter)
        self.finish()
        self.citiesViewModel?.model?.loadMore()
        navigationController.popViewController(animated: true)
    }
}
