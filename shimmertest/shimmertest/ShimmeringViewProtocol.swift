//
//  ShimmeringViewProtocol.swift
//  shimmertest
//
//  Created by Paolo Prodossimo Lopes on 07/05/22.
//

import UIKit

public protocol ShimmeringViewProtocol where Self: UIView {
    var shimmeringAnimatedItems: [UIView] { get }
    var excludedItems: Set<UIView> { get }
}

extension ShimmeringViewProtocol {
    public var shimmeringAnimatedItems: [UIView] { [self] }
    public var excludedItems: Set<UIView> { [] }
}
