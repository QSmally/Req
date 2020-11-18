
//
//  Req
//
//  Created by Joey Smalen on 27/10/2020.
//  Copyright © 2020 Joey Smalen. All rights reserved.
//

import Foundation

struct Req {
    
    var url: URL
    
    var headers         = [String: String]()
    var response        = [Response]()
    var method: Method  = Method.GET
    
    
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
    
    mutating func method(method: Method) -> Self {
        self.method = method
        return self
    }
    
    mutating func send() -> Void {
        let request = URLRequest(url: self.url)
        var this = self

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    return DispatchQueue.main.async {
                        this.response = [decodedResponse]
                        print(decodedResponse)
                    }
                }
            }
        }.resume()
    }
}
