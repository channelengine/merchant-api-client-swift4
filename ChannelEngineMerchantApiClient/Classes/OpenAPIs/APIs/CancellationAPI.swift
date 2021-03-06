//
// CancellationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class CancellationAPI {
    /**
     Create Cancellation.
     
     - parameter merchantCancellationRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func cancellationCreate(merchantCancellationRequest: MerchantCancellationRequest? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        cancellationCreateWithRequestBuilder(merchantCancellationRequest: merchantCancellationRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Cancellation.
     - POST /v2/cancellations
     - Mark (part of) an order as cancelled.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantCancellationRequest: (body)  (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func cancellationCreateWithRequestBuilder(merchantCancellationRequest: MerchantCancellationRequest? = nil) -> RequestBuilder<ApiResponse> {
        let path = "/v2/cancellations"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: merchantCancellationRequest)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
