//
//  PAHeaderRefreshControl.swift
//  PARefresh
//
//  Created by gz on 2016/10/25.
//  Copyright © 2016年 GhostZephyr. All rights reserved.
//

import Foundation

protocol PAHeaderRefreshControlProtocol {
    
    var ignoredScrollViewContentInsetTop: CGFloat { get set }
    
    static func headerWithStateChnagedFunction(_: (PARefreshState) -> ());
}

open class PAHeaderRefreshControl: PARefreshControl, PAHeaderRefreshControlProtocol {
    
    public static func headerWithStateChnagedFunction(_: (PARefreshState) -> ()) {
        
    }
    
    public var ignoredScrollViewContentInsetTop: CGFloat {
        get {
            return self.ignoredScrollViewContentInsetTop
        }
        set {
            self.ignoredScrollViewContentInsetTop = newValue
        }
    }
}
