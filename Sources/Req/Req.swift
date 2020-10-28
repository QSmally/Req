
//
//  Req
//
//  Created by Joey Smalen on 27/10/2020.
//  Copyright © 2020 Joey Smalen. All rights reserved.
//

struct Req {
    
    var url: String
    var method: Method = Method(rawValue: "GET")!
    
    mutating func query(url: String, method: Method?) -> String {
        if (method != nil) { self.method = method!; }
        self.url = url;
        return "foo bar"
    }
}
