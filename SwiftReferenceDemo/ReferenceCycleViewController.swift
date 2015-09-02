//
//  ReferenceCycleViewController.swift
//  SwiftReferenceDemo
//
//  Created by Yoshinori Imajo on 2015/09/02.
//  Copyright © 2015年 Yoshinori Imajo. All rights reserved.
//

import UIKit

class ReferenceCycleViewController: UIViewController {
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    let timerClient: TimerClient = TimerClient()
    
    deinit {
        timerClient.stop()
        NSLog("ReferenceCycleViewController deinit")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerClient.update = {
            (time) -> Void in
            self.detailDescriptionLabel.text = String(time)            
        }
    }
}

