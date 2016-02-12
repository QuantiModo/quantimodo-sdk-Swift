//
// Vote.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Vote: JSONEncodable {

    /** id */
    public var id: Int?
    /** client_id */
    public var client_id: String?
    /** ID of User */
    public var user_id: Int?
    /** ID of the predictor variable */
    public var cause_id: Int?
    /** ID of effect variable */
    public var effect_id: Int?
    /** Value of Vote */
    public var value: Int?
    /** When the record was first created. Use ISO 8601 datetime format */
    public var created_at: NSDate?
    /** When the record in the database was last updated. Use ISO 8601 datetime format */
    public var updated_at: NSDate?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["client_id"] = self.client_id
        nillableDictionary["user_id"] = self.user_id
        nillableDictionary["cause_id"] = self.cause_id
        nillableDictionary["effect_id"] = self.effect_id
        nillableDictionary["value"] = self.value
        nillableDictionary["created_at"] = self.created_at?.encodeToJSON()
        nillableDictionary["updated_at"] = self.updated_at?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
