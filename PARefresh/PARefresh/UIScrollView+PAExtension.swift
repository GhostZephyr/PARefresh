//
//  UIScrollView+PAExtension.swift
//  PARefresh
//
//  Created by gz on 2016/10/25.
//  Copyright © 2016年 GhostZephyr. All rights reserved.
//

import Foundation

extension UIScrollView {
    var insetTop: CGFloat {
        get {
            return self.contentInset.top
        }
        set {
            var insets = self.contentInset
            insets.top = newValue
            self.contentInset = insets
        }
    }
    
    var insetButtom: CGFloat {
        get {
            return self.contentInset.bottom
        }
        set {
            var insets = self.contentInset
            insets.bottom = newValue
            self.contentInset = insets
        }
    }
    
    var insetLeft: CGFloat {
        get {
            return self.contentInset.left
        }
        set {
            var insets = self.contentInset
            insets.left = newValue
            self.contentInset = insets
        }
    }
    
    var insetRight: CGFloat {
        get {
            return self.contentInset.right
        }
        set {
            var insets = self.contentInset
            insets.right = newValue
            self.contentInset = insets
        }
    }
    
    var offsetX: CGFloat {
        get {
            return self.contentOffset.x
        }
        set {
            var offset = self.contentOffset
            offset.x = newValue
            self.contentOffset = offset
        }
    }
    
    var offsetY: CGFloat {
        get {
            return self.contentOffset.y
        }
        set {
            var offset = self.contentOffset
            offset.y = newValue
            self.contentOffset = offset
        }
    }
    
    var contentWidth: CGFloat {
        get {
            return self.contentSize.width
        }
        set {
            var size = self.contentSize
            size.width = newValue
            self.contentSize = size
        }
    }
    
    var contentHeight: CGFloat {
        get {
            return self.contentSize.height
        }
        set {
            var size = self.contentSize
            size.height = newValue
            self.contentSize = size
        }
    }
}
