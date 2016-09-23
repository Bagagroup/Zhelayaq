//
//  Producer.swift
//  ZhelAyaq
//
//  Created by Baga on 25.07.16.
//  Copyright © 2016 Baga. All rights reserved.
//

import Foundation

class Producer {
    
    var title: String = ""
    
    class func fetchProducer() -> [Producer]{
        
        var list: [Producer] = []
        let brends = ["Nike", "Adidas", "Corp", "Asycs", "Y-3", "Reebok", "Jordan"]
        
        for i in brends {
            let producer = Producer()
            producer.title = i
            list.append(producer)
        }
        
        return list
    }
    
    
    func fetchSneaks() -> [Sneak]{
        return []
    }
}