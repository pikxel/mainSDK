//
//  Twilio.swift
//  TwilioSDK
//
//  Created by Peter Lizak on 03/02/2021.
//

import Foundation
#if canImport(MainSDK)
import MainSDK
public class Twilio: SelfAware {
    public func awake() {
        print("Twilio calling awake")
    }

    public init() {
        print("Twilio is created")
    }

    public func test() {
        print("Twilio test called")
    }
}
#else
public class Twilio {
    public init() {
        print("Twilio is created")
    }

    public func test() {
        print("Twilio test called")
    }
}
#endif
