//
//  CitiesViewController.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import UIKit

class CitiesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        getData()
    }
    
    func getData() {
        let review: CitiesReviewData = CitiesReviewData(
            showCountry: true,
            filter: "",
            page: 1
        )
        
        CitiesService().queryCities(reviewData: review, completion: { [weak self] result in
            guard let strongSelf = self else { return }
            switch result {
            case .success(let responseObject):
                print("arrayResponse \(responseObject)")
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }

}

//MARK:
extension CitiesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
