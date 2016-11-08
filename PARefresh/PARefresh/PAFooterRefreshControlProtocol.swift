//
//  PAFooterRefreshControlProtocol.swift
//  PARefresh
//
//  Created by gz on 2016/10/24.
//  Copyright © 2016年 GhostZephyr. All rights reserved.
//

import Foundation

public protocol PAFooterRefreshControlProtocol {
    
    /**
     提示没有更多数据
     */
    func endRefreshWithNoMoreData()
    
    /**
     重制状态
     */
    func resetNoMoreData()
}
