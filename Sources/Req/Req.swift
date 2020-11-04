
//
//  Req
//
//  Created by Joey Smalen on 27/10/2020.
//  Copyright © 2020 Joey Smalen. All rights reserved.
//

import Foundation

struct Req {
    
    var url: URL
    
    private var headers         = [String: String]()
    private var response        = [String: Any]()
    private var method: Method  = Method.GET
    
    
    init(url: String) throws {
        guard let baseUrl = URL(string: url) else {
            throw NSException(
                name: NSExceptionName.invalidUnarchiveOperationException,
                reason: "URL cannot be resolved or address is invalid."
            ) as! Error
        }
        
        self.url = baseUrl
    }
    
    
    mutating func header(key: String, value: String) -> Self {
        self.headers[key] = value
        return self
    }
    
    mutating func type(method: Method) -> Self {
        self.method = method
        return self
    }
}
