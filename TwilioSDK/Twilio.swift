//
//  Twilio.swift
//  TwilioSDK
//
//  Created by Peter Lizak on 03/02/2021.
//

import Foundation

public protocol SelfAware {

}

public class Twilio: SelfAware {
    public init() {
        print("Twilio is created")
    }

    public func test() {
        print("Twilio test called")
    }
}
