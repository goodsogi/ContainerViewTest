//
//  AddViewController.swift
//  TestScrollViewAndContainerView
//
//  Created by Clint on 2018. 7. 30..
//  Copyright © 2018년 clint. All rights reserved.
//

import UIKit

class MainTopBarViewController: UIViewController {
    override func viewDidLoad() {
           super.viewDidLoad()
          print("viewDidLoad")
           // Do any additional setup after loading the view.
       }
     
       // willMove -> It appears on the parent screen.
       override func willMove(toParent parent: UIViewController?) {
           print(#function)
           if let `parent` = parent as UIViewController? {
               print(parent)
           }
       }
       
       // It appears on the parent screen. -> didMove
       override func didMove(toParent parent: UIViewController?) {
           print(#function)
           if let `parent` = parent as UIViewController? {
               print(parent)
           }
       }
}
