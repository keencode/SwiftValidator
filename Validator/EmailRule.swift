//
//  EmailValidation.swift
//  Pingo
//
//  Created by Jeff Potter on 11/11/14.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation

public class EmailRule: RegexRule {
    
    let kDefaultRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
    
    /// Initialize with default regex and error code
    public init() {
        super.init(regex: kDefaultRegex)
    }
    
    /// Initialize with custom error code
    public init(errorCode: Int) {
        super.init(regex: kDefaultRegex)
        
        self.errorCode = errorCode
    }
    
    /// Initialize with custom regex
    override public init(regex:String){
        super.init(regex: regex)
    }

    override public func errorMessage() -> String {
        return "Must be a valid email address"
    }
}