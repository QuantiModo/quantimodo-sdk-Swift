//
// VoteAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire

extension SwaggerClientAPI {
    
    public class VoteAPI: APIBase {
    
        /**
         
         Get all Votes
         
         - GET /votes
         - Get all Votes
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : [ {
    "id" : 123,
    "updated_at" : "2016-02-09T02:17:55.608+0000",
    "effect_id" : 123,
    "cause_id" : 123,
    "value" : 123,
    "created_at" : "2016-02-09T02:17:55.608+0000",
    "user_id" : 123,
    "client_id" : "aeiou"
  } ],
  "success" : true
}, contentType=application/json}]
         
         - parameter accessToken: (query) User&#39;s OAuth2 access token
         - parameter clientId: (query) The ID of the client application which last created or updated this vote
         - parameter userId: (query) ID of the user who voted
         - parameter causeId: (query) ID of predictor variable
         - parameter effectId: (query) ID of outcome variable
         - parameter value: (query) Value of Vote. 1 is for upvote. 0 is for downvote.  Otherwise, there is no vote.
         - parameter createdAt: (query) When the record was first created. Use ISO 8601 datetime format
         - parameter updatedAt: (query) When the record was last updated. Use ISO 8601 datetime format
         - parameter limit: (query) The LIMIT is used to limit the number of results returned. So if you have 1000 results, but only want to the first 10, you would set this to 10 and offset to 0. The maximum limit is 200 records.
         - parameter offset: (query) OFFSET says to skip that many rows before beginning to return rows to the client. OFFSET 0 is the same as omitting the OFFSET clause. If both OFFSET and LIMIT appear, then OFFSET rows are skipped before starting to count the LIMIT rows that are returned.
         - parameter sort: (query) Sort by given field. If the field is prefixed with &#39;-&#39;, it will sort in descending order.

         - returns: RequestBuilder<Inline_response_200_11> 
         */
        public class func votesGet(accessToken accessToken: String?, clientId: String?, userId: Int?, causeId: Int?, effectId: Int?, value: Int?, createdAt: String?, updatedAt: String?, limit: Int?, offset: Int?, sort: String?) -> RequestBuilder<Inline_response_200_11> {
            let path = "/votes"
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "accessToken": accessToken,
                "clientId": clientId,
                "userId": userId,
                "causeId": causeId,
                "effectId": effectId,
                "value": value,
                "createdAt": createdAt,
                "updatedAt": updatedAt,
                "limit": limit,
                "offset": offset,
                "sort": sort
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_11>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Store Vote
         
         - POST /votes
         - This is to enable users to indicate their opinion on the plausibility of a causal relationship between a treatment and outcome. QuantiModo incorporates crowd-sourced plausibility estimations into their algorithm. This is done allowing user to indicate their view of the plausibility of each relationship with thumbs up/down buttons placed next to each prediction.
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : {
    "id" : 123,
    "updated_at" : "2016-02-09T02:17:55.611+0000",
    "effect_id" : 123,
    "cause_id" : 123,
    "value" : 123,
    "created_at" : "2016-02-09T02:17:55.611+0000",
    "user_id" : 123,
    "client_id" : "aeiou"
  },
  "success" : true
}, contentType=application/json}]
         
         - parameter accessToken: (query) User&#39;s OAuth2 access token
         - parameter body: (body) Vote that should be stored

         - returns: RequestBuilder<Inline_response_200_36> 
         */
        public class func votesPost(accessToken accessToken: String?, body: Vote?) -> RequestBuilder<Inline_response_200_36> {
            let path = "/votes"
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Inline_response_200_36>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Get Vote
         
         - GET /votes/{id}
         - Get Vote
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : {
    "id" : 123,
    "updated_at" : "2016-02-09T02:17:55.612+0000",
    "effect_id" : 123,
    "cause_id" : 123,
    "value" : 123,
    "created_at" : "2016-02-09T02:17:55.612+0000",
    "user_id" : 123,
    "client_id" : "aeiou"
  },
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of Vote
         - parameter accessToken: (query) User&#39;s OAuth2 access token

         - returns: RequestBuilder<Inline_response_200_36> 
         */
        public class func votesIdGet(id id: Int, accessToken: String?) -> RequestBuilder<Inline_response_200_36> {
            var path = "/votes/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "accessToken": accessToken
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Inline_response_200_36>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Update Vote
         
         - PUT /votes/{id}
         - Update Vote
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of Vote
         - parameter accessToken: (query) User&#39;s OAuth2 access token
         - parameter body: (body) Vote that should be updated

         - returns: RequestBuilder<Inline_response_200_2> 
         */
        public class func votesIdPut(id id: Int, accessToken: String?, body: Vote?) -> RequestBuilder<Inline_response_200_2> {
            var path = "/votes/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SwaggerClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Inline_response_200_2>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Delete Vote
         
         - DELETE /votes/{id}
         - Delete previously posted vote
         - OAuth:
           - type: oauth2
           - name: quantimodo_oauth2
         - examples: [{example={
  "data" : "aeiou",
  "success" : true
}, contentType=application/json}]
         
         - parameter id: (path) id of Vote
         - parameter accessToken: (query) User&#39;s OAuth2 access token

         - returns: RequestBuilder<Inline_response_200_2> 
         */
        public class func votesIdDelete(id id: Int, accessToken: String?) -> RequestBuilder<Inline_response_200_2> {
            var path = "/votes/{id}"
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
