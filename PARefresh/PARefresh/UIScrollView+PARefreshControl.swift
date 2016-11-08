//
//  UIScrollView+PARefreshControl.swift
//  PARefresh
//
//  Created by gz on 2016/10/24.
//  Copyright © 2016年 GhostZephyr. All rights reserved.
//

import Foundation

public protocol PARefreshControlUIScrollViewProtocol {
    
    var refreshHeader: PAHeaderRefreshControl? { get set }
    
    var refreshFooter: PAFooterRefreshControl? { get set }
}

extension UIScrollView: PARefreshControlUIScrollViewProtocol {
    
    public var refreshFooter: PAFooterRefreshControl? {
        get {
            return self.refreshFooter
        }
        set {
            self.refreshFooter = newValue
        }
    }

    public var refreshHeader: PAHeaderRefreshControl? {
        get {
            return self.refreshHeader
        }
        set {
            self.refreshHeader = newValue
        }
    }

    
    
}
