//
//  WithessTableExample.swift
//  TraineeApp
//
//  Created by aternetas on 28.09.2024.
//

import Foundation

protocol Pr {
    
    func pr1()
    
    func pr2()
}

extension Pr {
    
    func pr2() {}//default func realization, low priority
}

class C: Pr {
    
    func pr1() {}
    
//    func pr2() {}//we can not add realization of this func here, cuz we have default realization
    
    func pr2() {}//high priority
}

extension C {
    
//    override func pr1() {}//we can't do it
    
//    func pr2() {}//high priority
}

class D: C {
    
    override func pr1() {}
    
//    override func pr2() {}//we can't do it, if pr2() realization is inside extension
}

extension D {
    
//    override func pr1() {}//we can't do it
    
//    override func pr2() {}//we can't do it
}

class Check {
    
    //case 1
    static func check() {
        let cObj = C()
        cObj.pr2()
    }
    
    //case 2
    static func check2() {
        let dObj = D()
        dObj.pr2()
    }
    
    //case 3
    static func check3() {
        let cObj: Pr = C()
        cObj.pr2()
    }
    
    //case 4
    static func check4() {
        let dObj: Pr = D()
        dObj.pr2()
    }
}
