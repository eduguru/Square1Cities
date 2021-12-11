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
    
    var segmentioStyle = SegmentioStyle.onlyLabel
    enum TabIndex : Int {
        case firstChildTab = 0
        case secondChildTab = 1
    }
    
    var currentViewController: UIViewController?
    
    lazy var firstChildTabVC: UIViewController? = {
        let viewController = CitiesViewController()
        return viewController
    }()
    
    lazy var secondChildTabVC : UIViewController? = {
        let viewController = CitiesMapViewController()
        return viewController
    }()
    
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
        switch index {
        case TabIndex.firstChildTab.rawValue :
            vc = firstChildTabVC
        case TabIndex.secondChildTab.rawValue :
            vc = secondChildTabVC
        default:
            return nil
        }
        
        return vc
    }
    
    //MARK: - private func
    private func setUpViews() {
        
        self.navigationItem.title = "World Cities"
        self.setUpSegmentio()
        segmentioView.valueDidChange = { segmentio, segmentIndex in
            print("Selected item: ", segmentIndex)
            
            self.displayCurrentTab(segmentIndex)
        }
        
        displayCurrentTab(TabIndex.firstChildTab.rawValue)
    }
    
    private func setUpSegmentio() {
    var content = [SegmentioItem]()
    
    let item1 = SegmentioItem(
        title: "List",
        image: UIImage(named: "logo")
    )
    
    let item2 = SegmentioItem(
        title: "MapView",
        image: UIImage(named: "logo")
    )
    
    content.append(item1)
    content.append(item2)
    
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
