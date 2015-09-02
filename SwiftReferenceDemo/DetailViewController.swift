//
//  DetailViewController.swift
//  SwiftReferenceDemo
//
//  Created by Yoshinori Imajo on 2015/09/02.
//  Copyright © 2015年 Yoshinori Imajo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    let timerClient: TimerClient = TimerClient()

    deinit {
        timerClient.stop()
        NSLog("DetailViewController deinit")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerClient.update = {
            [weak self] (time) -> Void in
            if let weakSelf = self {
                weakSelf.detailDescriptionLabel.text = String(time)
            }
        }
    }    
}

