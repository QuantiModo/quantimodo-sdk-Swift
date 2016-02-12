//
// ConnectorAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire

extension SwaggerClientAPI {
    
    public class ConnectorAPI: APIBase {
    
        /**
         
         Get list of Connectors
         
         - GET /connectors
         - A connector pulls data from other data providers using their API or a screenscraper. Returns a list of all available connectors and information about them such as their id, name, whether the user has provided access, logo url, connection instructions, and the update history.
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : [ {
    "id" : 123,
    "enabled" : true,
    "display_name" : "aeiou",
    "oauth" : true,
    "updated_at" : "2016-02-09T02:17:55.392+0000",
    "long_description" : "aeiou",
    "short_description" : "aeiou",
    "name" : "aeiou",
    "created_at" : "2016-02-09T02:17:55.392+0000",
    "image" : "aeiou",
    "get_it_url" : "aeiou"
  } ],
  "success" : true
}, contentType=application/json}]
         
         - parameter accessToken: (query) User&#39;s OAuth2 access token
         - parameter name: (query) Lowercase system name for the data source
         - parameter displayName: (query) Pretty display name for the data source
         - parameter image: (query) URL to the image of the connector logo
         - parameter getItUrl: (query) URL to a site where one can get this device or application
         - parameter shortDescription: (query) Short description of the service (such as the categories it tracks)
         - parameter longDescription: (query) Longer paragraph description of the data provider
         - parameter enabled: (query) Set to 1 if the connector should be returned when listing connectors
         - parameter oauth: (query) Set to 1 if the connector uses OAuth authentication as opposed to username/password
         - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
         - parameter offset: (query) OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
         - parameter sort: (query) Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.

         - returns: RequestBuilder<Inline_response_200_15> 
         */
        public class func connectorsGet(accessToken accessToken: String?, name: String?, displayName: String?, image: String?, getItUrl: String?, shortDescription: String?, longDescription: String?, enabled: Bool?, oauth: Bool?, limit: Int?, offset: Int?, sort: String?) -> RequestBuilder<Inline_response_200_15> {
            let path = "/connectors"
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "accessToken": accessToken,
                "name": name,
                "displayName": displayName,
                "image": image,
                "getItUrl": getItUrl,
                "shortDescription": shortDescription,
                "longDescription": longDescription,
                "enabled": enabled,
                "oauth": oauth,
                "limit": limit,
                "offset": offset,
                "sort": sort
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_15>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Store Connector
         
         - POST /connectors
         - Store Connector
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : {
    "id" : 123,
    "enabled" : true,
    "display_name" : "aeiou",
    "oauth" : true,
    "updated_at" : "2016-02-09T02:17:55.397+0000",
    "long_description" : "aeiou",
    "short_description" : "aeiou",
    "name" : "aeiou",
    "created_at" : "2016-02-09T02:17:55.397+0000",
    "image" : "aeiou",
    "get_it_url" : "aeiou"
  },
  "success" : true
}, contentType=application/json}]
         
         - parameter accessToken: (query) User&#39;s OAuth2 access token
         - parameter body: (body) Connector that should be stored

         - returns: RequestBuilder<Inline_response_200_16> 
         */
        public class func connectorsPost(accessToken accessToken: String?, body: Connector?) -> RequestBuilder<Inline_response_200_16> {
            let path = "/connectors"
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Inline_response_200_16>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Get connector info for user
         
         - GET /connectors/{id}
         - Returns information about the connector such as the connector id, whether or not is connected for this user (i.e. we have a token or credentials), and its update history for the user.
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : {
    "id" : 123,
    "enabled" : true,
    "display_name" : "aeiou",
    "oauth" : true,
    "updated_at" : "2016-02-09T02:17:55.399+0000",
    "long_description" : "aeiou",
    "short_description" : "aeiou",
    "name" : "aeiou",
    "created_at" : "2016-02-09T02:17:55.399+0000",
    "image" : "aeiou",
    "get_it_url" : "aeiou"
  },
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of Connector
         - parameter accessToken: (query) User&#39;s OAuth2 access token

         - returns: RequestBuilder<Inline_response_200_16> 
         */
        public class func connectorsIdGet(id id: Int, accessToken: String?) -> RequestBuilder<Inline_response_200_16> {
            var path = "/connectors/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "accessToken": accessToken
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_16>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Update Connector
         
         - PUT /connectors/{id}
         - Update Connector
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of Connector
         - parameter accessToken: (query) User&#39;s OAuth2 access token
         - parameter body: (body) Connector that should be updated

         - returns: RequestBuilder<Inline_response_200_2> 
         */
        public class func connectorsIdPut(id id: Int, accessToken: String?, body: Connector?) -> RequestBuilder<Inline_response_200_2> {
            var path = "/connectors/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Inline_response_200_2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Delete Connector
         
         - DELETE /connectors/{id}
         - Delete Connector
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of Connector
         - parameter accessToken: (query) User&#39;s OAuth2 access token

         - returns: RequestBuilder<Inline_response_200_2> 
         */
        public class func connectorsIdDelete(id id: Int, accessToken: String?) -> RequestBuilder<Inline_response_200_2> {
            var path = "/connectors/{id}"
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
