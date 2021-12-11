//
//  CitiesViewController.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import UIKit

class CitiesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var responseObject: CitiesResponse?
    var arrayList: [Item] = []
    
    var page: Int = 1;
    var total: Int = 1;
    var search: String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(CityViewCell.nib(), forCellReuseIdentifier: CityViewCell.cellReuseIdentifier)
        
        //tableView.rowHeight = 255
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.tableFooterView = UIView()
        tableView.layoutMargins = UIEdgeInsets.zero
        tableView.separatorInset = UIEdgeInsets.zero
        
        getData()
    }
    
    func getData() {
        let review: CitiesReviewData = CitiesReviewData(
            showCountry: true,
            filter: "",
            page: page
        )
        
        CitiesService().queryCities(reviewData: review, completion: { [weak self] result in
            guard let strongSelf = self else { return }
            switch result {
            case .success(let response):
                print("arrayResponse \(response)")
                strongSelf.responseObject = response
                //strongSelf.arrayList = strongSelf.responseObject?.data?.items ?? []
                strongSelf.arrayList.append(contentsOf: strongSelf.responseObject?.data?.items ?? [])
                strongSelf.tableView.reloadData()
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }

}

//MARK:
extension CitiesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CityViewCell.cellReuseIdentifier, for: indexPath) as? CityViewCell else {
            return UITableViewCell()
        }
        
        let row = indexPath.row
        let item: Item = self.arrayList[row]
        
        cell.lbl_city.text = item.name
        cell.lbl_localName.text = item.localName
        
        if indexPath.row == (arrayList.count - 3) && total >= page {
            // load more
            print("Loading more")
            getData()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
