//
//  extendItem.swift
//  dreamLister2
//
//  Created by Drew Westcott on 09/10/2016.
//  Copyright © 2016 Drew Westcott. All rights reserved.
//

import Foundation

extension Item {
    
    // extra details here.
    public override func awakeFromInsert() {
        
        super.awakeFromInsert()
        self.created = NSDate()
        
    }
}
