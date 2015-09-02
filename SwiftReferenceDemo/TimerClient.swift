//
//  TimerClient.swift
//  SwiftReferenceDemo
//
//  Created by Yoshinori Imajo on 2015/09/02.
//  Copyright © 2015年 Yoshinori Imajo. All rights reserved.
//

import Foundation

class TimerClient: NSObject {
    
    var update: ((Int) -> Void)?

    private var timer: NSTimer = NSTimer()
    private var time: Int = 0
    
    deinit {
        NSLog("TimerClient deinit")
    }

    override init() {
        super.init()

        self.timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("ticktack:"), userInfo: nil, repeats: true)

    }
    
    func stop() {
        self.timer.invalidate()
    }
    
    func ticktack(timer: NSTimer) {
        NSLog("ticktack")
        update?(time++)
    }
    
}
