//
//  ViewController.swift
//  ContainerViewTest
//
//  Created by Jeonggyu Park on 14/08/2020.
//  Copyright © 2020 Jeonggyu Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
@IBOutlet weak var mainTopBarContainerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addMainTapBarToContainerView()
    }
    
    private func addMainTapBarToContainerView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainTopBarViewController = storyboard.instantiateViewController(withIdentifier: "main_top_bar")
        addChild(mainTopBarViewController)     
       
        mainTopBarViewController.view.frame = mainTopBarContainerView.bounds
        mainTopBarContainerView.addSubview(mainTopBarViewController.view)
         mainTopBarViewController.didMove(toParent: self)
    }


}

