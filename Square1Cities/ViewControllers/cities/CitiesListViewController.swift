//
//  CitiesListViewController.swift
//  Square1Cities
//
//  Created by Edwin Weru on 11/12/2021.
//

import UIKit
import Segmentio

class CitiesListViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var segmentioView: Segmentio!
    
    var coordinator: Coordinator?
    var model: CitiesViewModel?
    
    var goToFilter: (() -> Void)?
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpViews()
        
    }
    
    //MARK: -
    private func displayCurrentTab(_ tabIndex: Int){
        print("selected index is \(tabIndex)")
        if let vc = viewControllerForSelectedSegmentIndex(tabIndex) {
            
            self.addChild(vc)
            vc.didMove(toParent: self)
            
            vc.view.frame = self.containerView.bounds
            self.containerView.addSubview(vc.view)
            self.currentViewController = vc
        }
        
    }
    
    private func viewControllerForSelectedSegmentIndex(_ index: Int) -> UIViewController? {
        var vc: UIViewController?
        
        vc = vcDic[index] as? UIViewController
        
        return vc
    }
    
    //MARK: - private func
    private func setUpViews() {
        
        self.navigationItem.title = "World Cities"
        
        let filterButton: UIBarButtonItem = UIBarButtonItem(image: Asset.filter.image, style: UIBarButtonItem.Style.plain, target: self, action: #selector(applyFilter))
        
        self.navigationItem.setRightBarButtonItems([filterButton], animated: true)
        
        self.setUpSegmentio()
        segmentioView.valueDidChange = { segmentio, segmentIndex in
            print("Selected item: ", segmentIndex)
            
            self.displayCurrentTab(segmentIndex)
        }
        
        displayCurrentTab(0)
    }
    
    @objc private func applyFilter() {
        goToFilter?()
    }
    
    private func setUpSegmentio() {
    var content = [SegmentioItem]()
    
        for key in segmentTitles {
            let segmentItem = SegmentioItem( title: key, image: UIImage(named: "logo"))
            content.append(segmentItem)
        }
    
    let indicatorOptoins = SegmentioIndicatorOptions(
        type: .bottom,
        ratio: 1,
        height: 2,
        color: UIColor(named: .colorPrimary)
    )
    
    let h_separatorOptions = SegmentioHorizontalSeparatorOptions(
        type: SegmentioHorizontalSeparatorType.topAndBottom, // Top, Bottom, TopAndBottom
        height: 0.6,
        color: UIColor(named: .dividerColor)
    )
    
    let v_separatorOptions = SegmentioVerticalSeparatorOptions(
        ratio: 0.0, // from 0.1 to 1
        color: UIColor(named: .dividerColor)
    )
    
    let states = SegmentioStates(
        defaultState: SegmentioState(
            backgroundColor: .clear,
            titleFont: UIFont.systemFont(ofSize: UIFont.smallSystemFontSize),
            titleTextColor: .black
        ),
        selectedState: SegmentioState(
            backgroundColor: .clear,
            titleFont: UIFont.systemFont(ofSize: UIFont.smallSystemFontSize),
            titleTextColor: UIColor(named: .colorPrimary)
        ),
        highlightedState: SegmentioState(
            backgroundColor: UIColor.lightGray.withAlphaComponent(0.6),
            titleFont: UIFont.boldSystemFont(ofSize: UIFont.smallSystemFontSize),
            titleTextColor: .black
        )
    )
    
    let options = SegmentioOptions(
        backgroundColor: .white,
        segmentPosition: .dynamic,
        scrollEnabled: true,
        indicatorOptions: indicatorOptoins,
        horizontalSeparatorOptions: h_separatorOptions,
        verticalSeparatorOptions: v_separatorOptions,
        imageContentMode: .center,
        labelTextAlignment: .center,
        segmentStates: states
    )
    
    segmentioView.setup(
        content: content,
        style: segmentioStyle,
        options: options
    )
    
    segmentioView.selectedSegmentioIndex = 0
    }

}
