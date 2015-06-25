//
// ValueObject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


class ValueObject: JSONEncodable {

    /** Timestamp for the measurement event in epoch time (unixtime) */
    var timestamp: Int!
    /** Measurement value */
    var value: Double!
    /** Optional note to include with the measurement */
    var note: String?
    

    // MARK: JSONEncodable
    func encode() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["timestamp"] = self.timestamp
        nillableDictionary["value"] = self.value
        nillableDictionary["note"] = self.note
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
