//
// ProductBundleAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ProductBundleAPI {
    /**
     Get product bundles.  You can get the full product information on bundles from the regular /products endpoint.
     
     - parameter search: (query) Search product(s) by Name, MerchantProductNo, Ean or Brand      This search is applied to the result after applying the other filters. (optional)
     - parameter eanList: (query) Search products by submitting a list of EAN&#39;s (optional)
     - parameter merchantProductNoList: (query) Search products by submitting a list of MerchantProductNo&#39;s (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func productBundleGetByFilter(search: String? = nil, eanList: [String]? = nil, merchantProductNoList: [String]? = nil, page: Int? = nil, completion: @escaping ((_ data: CollectionOfMerchantProductBundleResponse?,_ error: Error?) -> Void)) {
        productBundleGetByFilterWithRequestBuilder(search: search, eanList: eanList, merchantProductNoList: merchantProductNoList, page: page).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get product bundles.  You can get the full product information on bundles from the regular /products endpoint.
     - GET /v2/productbundles
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apikey
     - examples: [{contentType=application/json, example={
  "TotalCount" : 5,
  "Message" : "Message",
  "ValidationErrors" : {
    "key" : [ "ValidationErrors", "ValidationErrors" ]
  },
  "Content" : [ {
    "Ean" : "Ean",
    "Price" : 0.80082819046101150206595775671303272247314453125,
    "Parts" : [ {
      "Ean" : "Ean",
      "Price" : 1.46581298050294517310021547018550336360931396484375,
      "Quantity" : 6,
      "MerchantProductNo" : "MerchantProductNo",
      "Name" : "Name"
    }, {
      "Ean" : "Ean",
      "Price" : 1.46581298050294517310021547018550336360931396484375,
      "Quantity" : 6,
      "MerchantProductNo" : "MerchantProductNo",
      "Name" : "Name"
    } ],
    "MerchantProductNo" : "MerchantProductNo",
    "Name" : "Name"
  }, {
    "Ean" : "Ean",
    "Price" : 0.80082819046101150206595775671303272247314453125,
    "Parts" : [ {
      "Ean" : "Ean",
      "Price" : 1.46581298050294517310021547018550336360931396484375,
      "Quantity" : 6,
      "MerchantProductNo" : "MerchantProductNo",
      "Name" : "Name"
    }, {
      "Ean" : "Ean",
      "Price" : 1.46581298050294517310021547018550336360931396484375,
      "Quantity" : 6,
      "MerchantProductNo" : "MerchantProductNo",
      "Name" : "Name"
    } ],
    "MerchantProductNo" : "MerchantProductNo",
    "Name" : "Name"
  } ],
  "ItemsPerPage" : 2,
  "Count" : 5,
  "StatusCode" : 7,
  "LogId" : 9,
  "Success" : true
}}]
     
     - parameter search: (query) Search product(s) by Name, MerchantProductNo, Ean or Brand      This search is applied to the result after applying the other filters. (optional)
     - parameter eanList: (query) Search products by submitting a list of EAN&#39;s (optional)
     - parameter merchantProductNoList: (query) Search products by submitting a list of MerchantProductNo&#39;s (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)

     - returns: RequestBuilder<CollectionOfMerchantProductBundleResponse> 
     */
    open class func productBundleGetByFilterWithRequestBuilder(search: String? = nil, eanList: [String]? = nil, merchantProductNoList: [String]? = nil, page: Int? = nil) -> RequestBuilder<CollectionOfMerchantProductBundleResponse> {
        let path = "/v2/productbundles"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "search": search, 
            "eanList": eanList, 
            "merchantProductNoList": merchantProductNoList, 
            "page": page?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CollectionOfMerchantProductBundleResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
