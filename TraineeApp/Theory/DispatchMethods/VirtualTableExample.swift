//
//  VirtualTableExample.swift
//  TraineeApp
//
//  Created by aternetas on 28.09.2024.
//

import Foundation


class A {
    
    func m1() {}
    
    func m5() {}
}

extension A {
    
    func m2() {}
}

class B: A {
    
    override func m1() {}
    
//    override func m2() {} we can't do it
    
    func m4() {}
}

extension B {
    
//    override func m5() {} we can't do it
    
//    override func m2() {} we can't do it
    
    func m3() {}
}
