//
// ShipmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ShipmentAPI {
    /**
     Create Shipment
     
     - parameter model: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func shipmentCreate(model: MerchantShipmentRequest, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        shipmentCreateWithRequestBuilder(model: model).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create Shipment
     - POST /v2/shipments
     - Mark (part of) an order as shipped.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "StatusCode" : 0,
  "LogId" : 6,
  "Success" : true
}}]
     
     - parameter model: (body)  

     - returns: RequestBuilder<ApiResponse> 
     */
    open class func shipmentCreateWithRequestBuilder(model: MerchantShipmentRequest) -> RequestBuilder<ApiResponse> {
        let path = "/v2/shipments"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
        ])

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Update Shipment
     
     - parameter merchantShipmentNo: (path) The merchant&#39;s shipment reference 
     - parameter model: (body) The updated tracking information 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func shipmentUpdate(merchantShipmentNo: String, model: MerchantShipmentTrackingRequest, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        shipmentUpdateWithRequestBuilder(merchantShipmentNo: merchantShipmentNo, model: model).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update Shipment
     - PUT /v2/shipments/{merchantShipmentNo}
     - Update an existing shipment with tracking information
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "StatusCode" : 0,
  "LogId" : 6,
  "Success" : true
}}]
     
     - parameter merchantShipmentNo: (path) The merchant&#39;s shipment reference 
     - parameter model: (body) The updated tracking information 

     - returns: RequestBuilder<ApiResponse> 
     */
    open class func shipmentUpdateWithRequestBuilder(merchantShipmentNo: String, model: MerchantShipmentTrackingRequest) -> RequestBuilder<ApiResponse> {
        var path = "/v2/shipments/{merchantShipmentNo}"
        let merchantShipmentNoPreEscape = "\(merchantShipmentNo)"
        let merchantShipmentNoPostEscape = merchantShipmentNoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{merchantShipmentNo}", with: merchantShipmentNoPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: model)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
        ])

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
