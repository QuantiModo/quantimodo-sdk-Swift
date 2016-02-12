//
// UpdateAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire

extension SwaggerClientAPI {
    
    public class UpdateAPI: APIBase {
    
        /**
         
         Get all Updates
         
         - GET /updates
         - Get all Updates
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : [ {
    "message" : "aeiou",
    "id" : 123,
    "number_of_measurements" : 123,
    "connector_id" : 123,
    "updated_at" : "2016-02-09T02:17:55.497+0000",
    "created_at" : "2016-02-09T02:17:55.497+0000",
    "user_id" : 123,
    "success" : true
  } ],
  "success" : true
}, contentType=application/json}]
         
         - parameter accessToken: (query) User&#39;s OAuth2 access token
         - parameter userId: (query) user_id
         - parameter connectorId: (query) connector_id
         - parameter numberOfMeasurements: (query) number_of_measurements
         - parameter success: (query) success
         - parameter message: (query) message
         - parameter createdAt: (query) When the record was first created. Use ISO 8601 datetime format
         - parameter updatedAt: (query) When the record was last updated. Use ISO 8601 datetime format
         - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
         - parameter offset: (query) OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
         - parameter sort: (query) Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.

         - returns: RequestBuilder<Inline_response_200_7> 
         */
        public class func updatesGet(accessToken accessToken: String?, userId: Int?, connectorId: Int?, numberOfMeasurements: Int?, success: Bool?, message: String?, createdAt: String?, updatedAt: String?, limit: Int?, offset: Int?, sort: String?) -> RequestBuilder<Inline_response_200_7> {
            let path = "/updates"
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "accessToken": accessToken,
                "userId": userId,
                "connectorId": connectorId,
                "numberOfMeasurements": numberOfMeasurements,
                "success": success,
                "message": message,
                "createdAt": createdAt,
                "updatedAt": updatedAt,
                "limit": limit,
                "offset": offset,
                "sort": sort
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_7>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Store Update
         
         - POST /updates
         - Store Update
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : {
    "message" : "aeiou",
    "id" : 123,
    "number_of_measurements" : 123,
    "connector_id" : 123,
    "updated_at" : "2016-02-09T02:17:55.502+0000",
    "created_at" : "2016-02-09T02:17:55.502+0000",
    "user_id" : 123,
    "success" : true
  },
  "success" : true
}, contentType=application/json}]
         
         - parameter accessToken: (query) User&#39;s OAuth2 access token
         - parameter body: (body) Update that should be stored

         - returns: RequestBuilder<Inline_response_200_28> 
         */
        public class func updatesPost(accessToken accessToken: String?, body: Update?) -> RequestBuilder<Inline_response_200_28> {
            let path = "/updates"
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Inline_response_200_28>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Get Update
         
         - GET /updates/{id}
         - Get Update
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : {
    "message" : "aeiou",
    "id" : 123,
    "number_of_measurements" : 123,
    "connector_id" : 123,
    "updated_at" : "2016-02-09T02:17:55.503+0000",
    "created_at" : "2016-02-09T02:17:55.503+0000",
    "user_id" : 123,
    "success" : true
  },
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of Update
         - parameter accessToken: (query) User&#39;s OAuth2 access token

         - returns: RequestBuilder<Inline_response_200_28> 
         */
        public class func updatesIdGet(id id: Int, accessToken: String?) -> RequestBuilder<Inline_response_200_28> {
            var path = "/updates/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "accessToken": accessToken
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_28>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Update Update
         
         - PUT /updates/{id}
         - Update Update
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of Update
         - parameter accessToken: (query) User&#39;s OAuth2 access token
         - parameter body: (body) Update that should be updated

         - returns: RequestBuilder<Inline_response_200_2> 
         */
        public class func updatesIdPut(id id: Int, accessToken: String?, body: Update?) -> RequestBuilder<Inline_response_200_2> {
            var path = "/updates/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Inline_response_200_2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Delete Update
         
         - DELETE /updates/{id}
         - Delete Update
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of Update
         - parameter accessToken: (query) User&#39;s OAuth2 access token

         - returns: RequestBuilder<Inline_response_200_2> 
         */
        public class func updatesIdDelete(id id: Int, accessToken: String?) -> RequestBuilder<Inline_response_200_2> {
            var path = "/updates/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "accessToken": accessToken
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: false)
        }
    
    }
}
