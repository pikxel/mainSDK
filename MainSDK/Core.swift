//
//  Core.swift
//  MainSDK
//
//  Created by Peter Lizak on 02/02/2021.
//

import Foundation


public protocol SelfAware {
    static func awake()
}
//
//#if DKITE_OFFER_PAYPAL
public class Core {
    public init() {
        print("Core MainSDK init called")
    }

    public func awakeAll() {
        let typeCount = Int(objc_getClassList(nil, 0))
        let types = UnsafeMutablePointer<AnyClass>.allocate(capacity: typeCount)
        let autoreleasingTypes = AutoreleasingUnsafeMutablePointer<AnyClass>(types)
        objc_getClassList(autoreleasingTypes, Int32(typeCount))
        for index in 0 ..< typeCount {
            if let type = types[index] as? SelfAware {
                print("Success")
            }
        }
        for index in 0 ..< typeCount { (types[index] as? SelfAware.Type)?.awake() }
        types.deallocate()
    }

}
//#else
//public class Core {
//    public init() {
//        print("Core MainSDK init called")
//    }
//
//    public func test() {
//        print("Core MainSDK test called")
//    }
//
//    static func awakeAll() {
//        let typeCount = Int(objc_getClassList(nil, 0))
//        let types = UnsafeMutablePointer<AnyClass>.allocate(capacity: typeCount)
//        let autoreleasingTypes = AutoreleasingUnsafeMutablePointer<AnyClass>(types)
//        objc_getClassList(autoreleasingTypes, Int32(typeCount))
//        for index in 0 ..< typeCount {
//            if let type = types[index] as? SelfAware {
//                print("Success")
//            }
//        }
////        for index in 0 ..< typeCount { (types[index] as? SelfAware.Type)?.awake() }
//        types.deallocate()
//    }
//}
//#endif


//
//#if canImport(TwilioSDK)
//import TwilioSDK
//public class Core {
//    public init() {
//        print("Core MainSDK init called")
//    }
//
//    public func test() {
//        let twilio = Twilio()
//        twilio.test()
//        print("Core MainSDK test called")
//    }
//}
//#else
//public class Core {
//    public init() {
//        print("Core MainSDK init called")
//    }
//
//    public func test() {
//        print("Core MainSDK test called")
//    }
//}
//#endif
