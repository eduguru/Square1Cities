//
//  CitiesViewController.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import UIKit
import DataCache

extension Notification.Name {
    static let citiesNotification = Notification.Name("citiesNotification")
}

class CitiesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var coordinator: Coordinator?
    var model: CitiesListViewModel?
    
    var responseObject: CitiesResponse?
    var arrayList: [Item] = []
    
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
        
        do {
            let object: CitiesResponse? = try DataCache.instance.readCodable(forKey: "myKey")
            responseObject = object
            arrayList = responseObject?.data?.items ?? []
            
            getData(response: responseObject, items: arrayList)
        } catch {
            print("Read error \(error.localizedDescription)")
        }
        
        model?.updateView = { [weak self] a, b in
            self?.getData(response: a, items: b)
        }
    }
    
    private func getData(response: CitiesResponse?, items: [Item]) {
        guard let object = response else {
            return
        }
        responseObject = object
        arrayList = items
        
        do {
            
            try DataCache.instance.write(codable: object, forKey: "myKey")
        } catch {
            print("Write error \(error.localizedDescription)")
        }
        
        let dataDict: [String : Any] = [
            "responseObject": responseObject,
            "arrayList": arrayList
        ]
        
        NotificationCenter.default.post(
            name: .citiesNotification,
            object: nil,
            userInfo: dataDict
        )
        
        tableView.reloadData()
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
        
        if indexPath.row == (arrayList.count - 3) && model?.total ?? 0 >= model?.page ?? 0 {
            // load more
            print("Loading more")
            model?.loadMore()
            model?.updateView = { [weak self] a, b in
                self?.getData(response: a, items: b)
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
