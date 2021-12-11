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
        
    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("deinit")
    }
    
    func start() {
        let nextVc = CitiesListViewController()
        nextVc.coordinator = self
        
        navigationController.pushViewController(nextVc, animated: false)
    }
}
