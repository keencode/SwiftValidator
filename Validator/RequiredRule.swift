//
//  Required.swift
//  pyur-ios
//
//  Created by Jeff Potter on 12/22/14.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation

public class RequiredRule: RegexRule {
    
    let kDefaultRegex = ""
    
    public init() {
        super.init(regex: kDefaultRegex)
    }
    
    /// Initialize with custom error code
    public init(errorCode: Int) {
        super.init(regex: kDefaultRegex)
        
        self.errorCode = errorCode
    }
    
    var message: String {
        return "This field is required"
    }
    
    override public func validate(value: String) -> Bool {
        return !value.isEmpty
    }
    
    override public func errorMessage() -> String {
        return message
    }
}