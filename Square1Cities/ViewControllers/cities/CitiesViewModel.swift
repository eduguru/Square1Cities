//
//  CitiesViewModel.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import RxSwift
import Segmentio

final class CitiesViewModel {
    var parentNavigatioController: UINavigationController?
    
    var segmentioStyle = SegmentioStyle.onlyLabel
    var currentViewController: UIViewController?
    var model: CitiesListViewModel?
    
    var segmentTitles: [String] = [
        "List",
        "MapView"
    ]
    
    lazy var vcDic: [Int : UIViewController?] = [
        0 : citiesViewController(),
        1 : citiesMapViewController()
    ]
    
    var responseObject: CitiesResponse?
    var arrayList: [Item] = []
    
    init(navigatioController: UINavigationController) {
        self.parentNavigatioController = navigatioController
        
        model = CitiesListViewModel()
        model?.updateView = { [weak self] a, b in
            self?.responseObject = a
            self?.arrayList = b
        }
    }
    
    private func citiesViewController() -> UIViewController? {
        let vc = CitiesViewController()
        vc.model = model
        vc.arrayList = self.arrayList
        vc.responseObject = self.responseObject
        vc.coordinator = CitiesCoordinator(parentNavigatioController!)
        
        return vc
    }
    
    private func citiesMapViewController() -> UIViewController? {
        let vc = CitiesMapViewController()
        vc.model = model
        vc.arrayList = self.arrayList
        vc.responseObject = self.responseObject
        vc.coordinator = CitiesCoordinator(parentNavigatioController!)
        
        return vc
    }
}
