//
//  Core.swift
//  MainSDK
//
//  Created by Peter Lizak on 02/02/2021.
//

import Foundation

#if DKITE_OFFER_PAYPAL
import TwilioSDK
public class Core {
    public init() {
        print("Core MainSDK init called")
    }

    public func test() {
        let twilio = Twilio()
        twilio.test()
        print("Core MainSDK test called")
    }
}
#else
public class Core {
    public init() {
        print("Core MainSDK init called")
    }

    public func test() {
        print("Core MainSDK test called")
    }
}
#endif


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
