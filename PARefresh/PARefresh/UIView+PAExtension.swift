//
//  UIView+PARefreshControl.swift
//  PARefresh
//
//  Created by gz on 2016/10/25.
//  Copyright © 2016年 GhostZephyr. All rights reserved.
//

import Foundation


extension UIView {
    var paX: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            self.paX = newValue
        }
    }
    
    var paY: CGFloat {
        get {
            return self.paY
        }
        set {
            self.paY = newValue
        }
    }
    
    var paWidth: CGFloat {
        get {
            return self.paWidth
        }
        set {
            self.paWidth = newValue
        }
    }
    
    var paHeight: CGFloat {
        get {
            return self.paHeight
        }
        set {
            self.paHeight = newValue
        }
    }
    
    var paSize: CGFloat {
        get {
            return self.paSize
        }
        set {
            self.paSize = newValue
        }
    }
    
    var paOrigin: CGFloat {
        get {
            return self.paOrigin
        }
        set {
            self.paOrigin = newValue
        }
    }
}
