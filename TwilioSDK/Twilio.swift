//
//  Twilio.swift
//  TwilioSDK
//
//  Created by Peter Lizak on 03/02/2021.
//

import Foundation
import MainSDK
public class Twilio: SelfAware {
    public static func awake() {
        print("Twilio calling awake")
    }

    public init() {
        print("Twilio is created")
    }

    public func test() {
        print("Twilio test called")
    }
}
