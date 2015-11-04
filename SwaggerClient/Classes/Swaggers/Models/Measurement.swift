//
// Measurement.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Measurement: JSONEncodable {

    /** id */
    public var id: Int?
    /** ID of user that owns this measurement */
    public var user_id: Int?
    /** client_id */
    public var client_id: String?
    /** Connector ID */
    public var connector_id: Int?
    /** ID of the variable for which we are creating the measurement records */
    public var variable_id: Int?
    /** Application or device used to record the measurement values */
    public var source_id: Int?
    /** Start Time for the measurement event in ISO 8601 */
    public var start_time: Int?
    /** Converted measurement value in requested unit */
    public var value: Float?
    /** Unit ID of measurement as requested in GET request */
    public var unit_id: Int?
    /** Original value */
    public var original_value: Float?
    /** Unit ID of measurement as originally submitted */
    public var original_unit_id: Int?
    /** duration of measurement in seconds */
    public var duration: Int?
    /** Note of measurement */
    public var note: String?
    /** latitude */
    public var latitude: Float?
    /** longitude */
    public var longitude: Float?
    /** location */
    public var location: String?
    /** created_at */
    public var created_at: NSDate?
    /** updated_at */
    public var updated_at: NSDate?
    /** error */
    public var error: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["user_id"] = self.user_id
        nillableDictionary["client_id"] = self.client_id
        nillableDictionary["connector_id"] = self.connector_id
        nillableDictionary["variable_id"] = self.variable_id
        nillableDictionary["source_id"] = self.source_id
        nillableDictionary["start_time"] = self.start_time
        nillableDictionary["value"] = self.value
        nillableDictionary["unit_id"] = self.unit_id
        nillableDictionary["original_value"] = self.original_value
        nillableDictionary["original_unit_id"] = self.original_unit_id
        nillableDictionary["duration"] = self.duration
        nillableDictionary["note"] = self.note
        nillableDictionary["latitude"] = self.latitude
        nillableDictionary["longitude"] = self.longitude
        nillableDictionary["location"] = self.location
        nillableDictionary["created_at"] = self.created_at?.encodeToJSON()
        nillableDictionary["updated_at"] = self.updated_at?.encodeToJSON()
        nillableDictionary["error"] = self.error
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
