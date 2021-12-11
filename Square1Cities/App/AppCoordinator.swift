//
//  AppCoordinator.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import UIKit

// MARK: - Coordinator
protocol Coordinator: AnyObject {

    var navigationController: UINavigationController { get set }
    var childCoordinators: [Coordinator] { get set } /// Array to keep tracking of all child coordinators. Most of the time this array will contain only one child coordinator
    
    func start() /// A place to put logic to start the flow.
    func finish() /// A place to put logic to finish the flow, to clean all children coordinators, and to notify the parent that this coordinator is ready to be deallocated
    
    init(_ navigationController: UINavigationController)
}

extension Coordinator {
    func finish() {
        childCoordinators.removeAll()
    }
}

/// App coordinator is the only one coordinator which will exist during app's life cycle
class AppCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator]()
        
    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.setNavigationBarHidden(false, animated: true)
    }

    func start() {
        showMainFlow()
    }

    func showMainFlow() {
        let coordinator = CitiesCoordinator(navigationController)
        coordinator.start()
        childCoordinators.append(coordinator)
    }
}
