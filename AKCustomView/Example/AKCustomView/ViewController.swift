//
//  ViewController.swift
//  AKCustomView
//
//  Created by Aurangzeb Khan on 09/01/2026.
//  Copyright (c) 2026 Aurangzeb Khan. All rights reserved.
//

import UIKit
import AKCustomView

class ViewController: UIViewController{
    @IBOutlet weak var bgView1: AKCustomView?
    @IBOutlet weak var bgView2: AKCustomView?
    @IBOutlet weak var bgView3: AKCustomView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bgView1?.setAllowTapAction(allowTapAction: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

