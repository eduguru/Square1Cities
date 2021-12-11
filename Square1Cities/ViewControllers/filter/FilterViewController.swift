//
//  FilterViewController.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import UIKit

class FilterViewController: UIViewController {

    @IBOutlet weak var txt_search: UITextField!
    
    @IBOutlet weak var segmentYesNo: UISegmentedControl! {
        didSet {
            segmentYesNo.selectedSegmentTintColor = UIColor(named: .colorPrimary)
        }
    }
    
    @IBOutlet weak var btn_done: UIButton! {
        didSet {
            btn_done.backgroundColor = UIColor(named: .colorPrimary)
            btn_done.setTitleColor(.white, for: .normal)
            btn_done.layer.cornerRadius = 10
        }
    }
    
    var coordinator: Coordinator?
    var filterData: CitiesReviewData?
    
    var applyFilterSet: ((CitiesReviewData) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Filters"
        filterData = CitiesReviewData()
    }
    
    @IBAction func actionDone(_ sender: Any) {
        
        filterData?.filter = self.txt_search.text ?? ""
        filterData?.page = 1
        self.applyFilterSet?(filterData!)
        
    }
    
    @IBAction func actionYesNo(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            filterData?.showCountry = false
        case 1:
            filterData?.showCountry = true
        default:
            break
        }
    }
    
}
