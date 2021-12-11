//
//  CitiesViewModel.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import RxSwift
import Segmentio

final class CitiesViewModel {
    
    var segmentioStyle = SegmentioStyle.onlyLabel
    var currentViewController: UIViewController?
    
    var segmentTitles: [String] = [
        "List",
        "MapView"
    ]
    lazy var vcDic: [Int : UIViewController?] = [
        0 : CitiesViewController(),
        1 : CitiesMapViewController()
    ]
    
    
    init() {
        
    }
}

