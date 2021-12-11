//
//  CitiesMapViewController.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import UIKit
import GoogleMaps

class CitiesMapViewController: UIViewController {

    @IBOutlet weak var mapView: GMSMapView!
    
    var latLongArray = [(Double,Double)]()  // dictionary for lat long
    var markers = [GMSMarker]()
    var bounds = GMSCoordinateBounds()
    
    var arrayList: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func loopArray(arrayList: [Item]) {
        
        if !arrayList.isEmpty {
            for i in 0...arrayList.count - 1 {
                
                let currentItem: Item = self.arrayList[i];
                
                if let lat = arrayList[i].lat, let long = arrayList[i].lng {

                    self.latLongArray.append((lat, long))
                    
                    //Setting camera
                  //self.mapView.camera = GMSCameraPosition.camera(withLatitude: lat, longitude: long, zoom: 8.0)
                    let marker = GMSMarker()
                    marker.position = CLLocationCoordinate2DMake(lat, long)
                    marker.title = arrayList[i].name
                    marker.snippet = arrayList[i].localName
                    
                    //marker.icon = UIImage(named: "motorbike-1")
                    let markerImage = UIImage(named: "suMotorbike")
                    let imageView = UIImageView(image: markerImage)
                    imageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
                            
                    marker.iconView = imageView
                    //marker.icon = UIImage(named: "default_marker_uefora")
                      
                    marker.map = self.mapView
                    self.markers.append(marker)
                    print("Marker is \(marker)")
                    
                    bounds = bounds.includingCoordinate(marker.position)
                    
                } // if let
                
            } //for loop
            
            let camera = mapView.camera(for: bounds, insets:UIEdgeInsets.zero)
            mapView.camera = camera!;
            //mapView.animate(with: GMSCameraUpdate.fit(bounds, withPadding: 20.0))
        } //if is empty
    }

}
