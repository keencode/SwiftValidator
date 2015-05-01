//
//  ValidationRule.swift
//  Pingo
//
//  Created by Jeff Potter on 11/11/14.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation
import UIKit

/// Error codes for the default rules
enum ValidationErrorCode: Int {
    case Required
    case InvalidEmail
}

public class ValidationRule {
    
    public var textField: UITextField
    public var errorLabel: UILabel?
    public var rules: [Rule] = []
    public var userInfo: [NSObject : AnyObject]?
    
    public init(textField: UITextField, rules:[Rule], errorLabel:UILabel?) {
        self.textField = textField
        self.errorLabel = errorLabel
        self.rules = rules
    }
    
    public func validateField() -> ValidationError? {
        for rule in rules {
            if !rule.validate(textField.text) {
                if let regexRule = rule as? RegexRule {
                    if let code = regexRule.errorCode {
                        let error = ValidationError(domain: ValidationError.Domain, code: code.rawValue, userInfo: userInfo)
                        error.textField = textField
                        return error
                    }
                }
            }
        }
        return nil
    }
}