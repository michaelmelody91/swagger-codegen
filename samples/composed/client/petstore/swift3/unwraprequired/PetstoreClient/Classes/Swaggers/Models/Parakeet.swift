//
// Parakeet.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Parakeet: JSONEncodable {
    public var color: String?
    public var soundRepeater: Bool?


    public init(color: String?=nil, soundRepeater: Bool?=nil) {
        self.color = color
        self.soundRepeater = soundRepeater
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["color"] = self.color
        nillableDictionary["soundRepeater"] = self.soundRepeater

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
