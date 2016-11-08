//
//  PARefreshControl.swift
//  PARefresh
//
//  Created by gz on 2016/10/24.
//  Copyright © 2016年 GhostZephyr. All rights reserved.
//

import UIKit

public enum PARefreshState {
    //默认状态 普通闲置
    case normal
    //达到送卡即可刷新的状态
    case pulling
    //即将刷新的状态
    case willRefreshing
    //正在刷新过程中
    case refreshing
    //没有数据了
    case noMoreData
}

public protocol PARefreshControlStateProtocol {
    
    var stateChangedFunc: (PARefreshState) -> ()? { get set }
    
    var refreshingFunc: () -> ()? { get set }
    
    var isRefreshing: Bool { get }
    
    var state: PARefreshState { get }
    
    func beginRefresh()
    
    func beginRefresh(_ completion: () -> ())
    
    func endRefresh()
    
    func endRefresh(_ completion: () -> ())
}

internal protocol PARefreshControlLifeCycleProtocol {
    
    func prepare()
    
    func measureSubviews()
    
    func scrollViewContentOffsetDidChange(_ change: NSDictionary)
    
    func scrollViewContentOffsetSizeDidChange(_ change: NSDictionary)
    
    func scrollViewPanStateDidChange(_ change: NSDictionary)
    
}

protocol PARefreshControlProtocol {

    var scroll: UIScrollView? { get set }
    
    var scrollViewOriginInset: UIEdgeInsets? { get set }
    
    var pullingPercent: CGFloat { get set }
    
    var automaticallyChangeAlpha: Bool { get set }
}

open class PARefreshControl: UIView ,PARefreshControlProtocol, PARefreshControlStateProtocol, PARefreshControlLifeCycleProtocol {

    public var refreshingFunc: () -> ()?
    
    public var state: PARefreshState
    
    public var isRefreshing: Bool
    
    public var stateChangedFunc: (PARefreshState) -> ()?
    
    internal var automaticallyChangeAlpha: Bool

    internal var pullingPercent: CGFloat

    internal var scrollViewOriginInset: UIEdgeInsets?

    internal var scroll: UIScrollView?
    
    private var pan: UIPanGestureRecognizer?
    
    override init(frame: CGRect) {
        self.state = .normal
        self.isRefreshing = false
        self.stateChangedFunc = { state in return }
        self.automaticallyChangeAlpha = false
        self.pullingPercent = 0.0
        self.refreshingFunc = { return }
        super.init(frame: frame)
        self.prepare()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        self.state = .normal
        self.isRefreshing = false
        self.stateChangedFunc = { state in return }
        self.automaticallyChangeAlpha = false
        self.pullingPercent = 0.0
        self.refreshingFunc = { return }
        super.init(coder: aDecoder)
        self.prepare()
    }
    
    internal func prepare() {
        self.autoresizingMask = .flexibleWidth
        self.backgroundColor = UIColor.clear
    }

    override open func layoutSubviews() {
        self.measureSubviews()
        super.layoutSubviews()
    }
    
    override open func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        
        if (newSuperview != nil && newSuperview?.classForCoder != UIScrollView.classForCoder()) {
            return
        }

        self.removeObservers()
    
        if newSuperview != nil {
            self.paWidth = (newSuperview?.paWidth)!
            self.paX = 0
            self.scroll = newSuperview as? UIScrollView
            self.scroll?.alwaysBounceVertical = true
            self.scrollViewOriginInset = self.scroll?.contentInset
            self.addObservers()
        }
    }
    
    open override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        if self.state == .refreshing {
            
        }
    }
    
    internal func scrollViewPanStateDidChange(_ change: NSDictionary) {
        
    }

    internal func scrollViewContentOffsetSizeDidChange(_ change: NSDictionary) {
        
    }

    internal func scrollViewContentOffsetDidChange(_ change: NSDictionary) {
        
    }

    internal func measureSubviews() {
        
    }

    public func endRefresh(_ completion: () -> ()) {
        
    }

    public func endRefresh() {
        
    }

    public func beginRefresh(_ completion: () -> ()) {
        
    }

    public func beginRefresh() {
        
    }
    
    private func addObservers() {
        self.scroll?.addObserver(self, forKeyPath: PARefreshContentOffsetKey, options: [.new,.old], context: nil)
        self.scroll?.addObserver(self, forKeyPath: PARefreshContentSizeKey, options: [.new,.old], context: nil)
        self.pan = self.scroll?.panGestureRecognizer
        self.pan?.addObserver(self, forKeyPath: PARefreshPanGestureStateKey, options: [.new,.old], context: nil)
        
    }
    
    private func removeObservers() {
        self.superview?.removeObserver(self, forKeyPath: PARefreshContentOffsetKey)
        self.superview?.removeObserver(self, forKeyPath: PARefreshContentSizeKey)
        self.pan?.removeObserver(self, forKeyPath: PARefreshPanGestureStateKey)
        self.pan = nil
    }
}
