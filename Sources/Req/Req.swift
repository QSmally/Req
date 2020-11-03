
//
//  Req
//
//  Created by Joey Smalen on 27/10/2020.
//  Copyright © 2020 Joey Smalen. All rights reserved.
//

struct Req {
    
    var url: String
    
    private var headers         = [String: String]()
    private var response        = [String: Any]()
    private var method: Method  = Method.GET
    
    
    init(url: String) {
        self.url = url
    }
    
    
    mutating func header(key: String, value: String) -> Self {
        self.headers[key] = value
        return self
    }
}
