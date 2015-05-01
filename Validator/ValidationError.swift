//
//  File.swift
//  Pingo
//
//  Created by Jeff Potter on 11/11/14.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation
import UIKit

public class ValidationError: NSError {
    /// Default error domain
    static let Domain = "com.keencode.error.validation"
    
    public var textField: UITextField?
    public var errorLabel: UILabel?
    public var errorMessage: String?
    
    public override init(domain: String, code: Int, userInfo dict: [NSObject : AnyObject]?) {
        super.init(domain: domain, code: code, userInfo: dict)
    }

//    public init(textField:UITextField, error:String) {
//        self.textField = textField
//        self.errorMessage = error
//    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}