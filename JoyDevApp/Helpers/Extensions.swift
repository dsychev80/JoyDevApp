//
//  Extensions.swift
//  ForaSoftEvaluationTestDemo
//
//  Created by Denis Sychev on 10/9/21.
//

import UIKit

// MARK: - Nameable
protocol Nameable: AnyObject {
    static var name: String { get }
}

extension Nameable {
    static var name: String {
        return String(describing: self)
    }
}

extension UIView: Nameable { }

extension UIViewController: Nameable { }

extension Date {
    /// Convert Date to String with formate "dd.MM.YYYY"
    func formate() -> String {
        let dateFormaterr = DateFormatter()
        dateFormaterr.dateFormat = "dd.MM.YYYY"
        return dateFormaterr.string(from: self)
    }
}
