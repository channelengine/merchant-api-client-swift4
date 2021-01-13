//
// OrderAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class OrderAPI {
    /**
     Acknowledge Order.
     
     - parameter merchantOrderAcknowledgementRequest: (body) Relations between the id&#39;s returned by ChannelEngine and the references which the merchant uses. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderAcknowledge(merchantOrderAcknowledgementRequest: MerchantOrderAcknowledgementRequest? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        orderAcknowledgeWithRequestBuilder(merchantOrderAcknowledgementRequest: merchantOrderAcknowledgementRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Acknowledge Order.
     - POST /v2/orders/acknowledge
     - Acknowledge an order. By acknowledging the order the merchant can confirm that<br />the order has been imported. When acknowledging an order the merchant has to supply<br />references that uniquely identify the order and the order lines. These references<br />will be used in the other API calls.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantOrderAcknowledgementRequest: (body) Relations between the id&#39;s returned by ChannelEngine and the references which the merchant uses. (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func orderAcknowledgeWithRequestBuilder(merchantOrderAcknowledgementRequest: MerchantOrderAcknowledgementRequest? = nil) -> RequestBuilder<ApiResponse> {
        let path = "/v2/orders/acknowledge"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: merchantOrderAcknowledgementRequest)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get Orders By Filter.
     
     - parameter statuses: (query) Order status(es) to filter on. (optional)
     - parameter emailAddresses: (query) Client emailaddresses to filter on. (optional)
     - parameter merchantOrderNos: (query) Filter on unique order reference used by the merchant. (optional)
     - parameter channelOrderNos: (query) Filter on unique order reference used by the channel. (optional)
     - parameter fromDate: (query) Filter on the order date, starting from this date. This date is inclusive.&lt;br /&gt;The order date is based on the data we got from a channel. (optional)
     - parameter toDate: (query) Filter on the order date, until this date. This date is exclusive.&lt;br /&gt;The order date is based on the data we got from a channel. (optional)
     - parameter fromCreatedAtDate: (query) Filter on the created at date in ChannelEngine, starting from this date. This date is inclusive.&lt;br /&gt;The created date is set on the date and time when the order is created. (optional)
     - parameter excludeMarketplaceFulfilledOrdersAndLines: (query) Exclude order (lines) fulfilled by the marketplace (amazon:FBA, bol:LVB, etc.) (optional)
     - parameter fulfillmentType: (query) Filter orders on fulfillment type. This will include all orders lines, even if they are partially fulfilled by the marketplace.&lt;br /&gt;To exclude orders and lines that are fulfilled by the marketplace from the response, set ExcludeMarketplaceFulfilledOrdersAndLines to true. (optional)
     - parameter onlyWithCancellationRequests: (query) Filter on orders containing cancellation requests.&lt;br /&gt;Some channels allow a customer to cancel an order until it has been shipped.&lt;br /&gt;When an order has already been acknowledged in ChannelEngine, it can only be cancelled by creating a cancellation. (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderGetByFilter(statuses: [OrderStatusView]? = nil, emailAddresses: [String]? = nil, merchantOrderNos: [String]? = nil, channelOrderNos: [String]? = nil, fromDate: Date? = nil, toDate: Date? = nil, fromCreatedAtDate: Date? = nil, excludeMarketplaceFulfilledOrdersAndLines: Bool? = nil, fulfillmentType: FulfillmentType? = nil, onlyWithCancellationRequests: Bool? = nil, page: Int? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantOrderResponse?,_ error: Error?) -> Void)) {
        orderGetByFilterWithRequestBuilder(statuses: statuses, emailAddresses: emailAddresses, merchantOrderNos: merchantOrderNos, channelOrderNos: channelOrderNos, fromDate: fromDate, toDate: toDate, fromCreatedAtDate: fromCreatedAtDate, excludeMarketplaceFulfilledOrdersAndLines: excludeMarketplaceFulfilledOrdersAndLines, fulfillmentType: fulfillmentType, onlyWithCancellationRequests: onlyWithCancellationRequests, page: page).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Orders By Filter.
     - GET /v2/orders
     - Fetch orders based on the provided OrderFilter.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter statuses: (query) Order status(es) to filter on. (optional)
     - parameter emailAddresses: (query) Client emailaddresses to filter on. (optional)
     - parameter merchantOrderNos: (query) Filter on unique order reference used by the merchant. (optional)
     - parameter channelOrderNos: (query) Filter on unique order reference used by the channel. (optional)
     - parameter fromDate: (query) Filter on the order date, starting from this date. This date is inclusive.&lt;br /&gt;The order date is based on the data we got from a channel. (optional)
     - parameter toDate: (query) Filter on the order date, until this date. This date is exclusive.&lt;br /&gt;The order date is based on the data we got from a channel. (optional)
     - parameter fromCreatedAtDate: (query) Filter on the created at date in ChannelEngine, starting from this date. This date is inclusive.&lt;br /&gt;The created date is set on the date and time when the order is created. (optional)
     - parameter excludeMarketplaceFulfilledOrdersAndLines: (query) Exclude order (lines) fulfilled by the marketplace (amazon:FBA, bol:LVB, etc.) (optional)
     - parameter fulfillmentType: (query) Filter orders on fulfillment type. This will include all orders lines, even if they are partially fulfilled by the marketplace.&lt;br /&gt;To exclude orders and lines that are fulfilled by the marketplace from the response, set ExcludeMarketplaceFulfilledOrdersAndLines to true. (optional)
     - parameter onlyWithCancellationRequests: (query) Filter on orders containing cancellation requests.&lt;br /&gt;Some channels allow a customer to cancel an order until it has been shipped.&lt;br /&gt;When an order has already been acknowledged in ChannelEngine, it can only be cancelled by creating a cancellation. (optional)
     - parameter page: (query) The page to filter on. Starts at 1. (optional)
     - returns: RequestBuilder<CollectionOfMerchantOrderResponse> 
     */
    open class func orderGetByFilterWithRequestBuilder(statuses: [OrderStatusView]? = nil, emailAddresses: [String]? = nil, merchantOrderNos: [String]? = nil, channelOrderNos: [String]? = nil, fromDate: Date? = nil, toDate: Date? = nil, fromCreatedAtDate: Date? = nil, excludeMarketplaceFulfilledOrdersAndLines: Bool? = nil, fulfillmentType: FulfillmentType? = nil, onlyWithCancellationRequests: Bool? = nil, page: Int? = nil) -> RequestBuilder<CollectionOfMerchantOrderResponse> {
        let path = "/v2/orders"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "statuses": statuses?.encodeToJSON(), 
            "emailAddresses": emailAddresses?.encodeToJSON(), 
            "merchantOrderNos": merchantOrderNos?.encodeToJSON(), 
            "channelOrderNos": channelOrderNos?.encodeToJSON(), 
            "fromDate": fromDate?.encodeToJSON(), 
            "toDate": toDate?.encodeToJSON(), 
            "fromCreatedAtDate": fromCreatedAtDate?.encodeToJSON(), 
            "excludeMarketplaceFulfilledOrdersAndLines": excludeMarketplaceFulfilledOrdersAndLines?.encodeToJSON(), 
            "fulfillmentType": fulfillmentType?.encodeToJSON(), 
            "onlyWithCancellationRequests": onlyWithCancellationRequests?.encodeToJSON(), 
            "page": page?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<CollectionOfMerchantOrderResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get New Orders.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderGetNew(apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: CollectionOfMerchantOrderResponse?,_ error: Error?) -> Void)) {
        orderGetNewWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get New Orders.
     - GET /v2/orders/new
     - Fetch newly placed orders (order with status NEW).
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - returns: RequestBuilder<CollectionOfMerchantOrderResponse> 
     */
    open class func orderGetNewWithRequestBuilder() -> RequestBuilder<CollectionOfMerchantOrderResponse> {
        let path = "/v2/orders/new"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<CollectionOfMerchantOrderResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Download Invoice.
     
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant. 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderInvoice(merchantOrderNo: String, useCustomerCulture: Bool? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: URL?,_ error: Error?) -> Void)) {
        orderInvoiceWithRequestBuilder(merchantOrderNo: merchantOrderNo, useCustomerCulture: useCustomerCulture).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Download Invoice.
     - GET /v2/orders/{merchantOrderNo}/invoice
     - Generates the ChannelEngine VAT invoice for this order in PDF.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant. 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language. (optional, default to false)
     - returns: RequestBuilder<URL> 
     */
    open class func orderInvoiceWithRequestBuilder(merchantOrderNo: String, useCustomerCulture: Bool? = nil) -> RequestBuilder<URL> {
        var path = "/v2/orders/{merchantOrderNo}/invoice"
        let merchantOrderNoPreEscape = "\(APIHelper.mapValueToPathItem(merchantOrderNo))"
        let merchantOrderNoPostEscape = merchantOrderNoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{merchantOrderNo}", with: merchantOrderNoPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "useCustomerCulture": useCustomerCulture?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<URL>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Download Packing Slip.
     
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant. 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderPackingSlip(merchantOrderNo: String, useCustomerCulture: Bool? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: URL?,_ error: Error?) -> Void)) {
        orderPackingSlipWithRequestBuilder(merchantOrderNo: merchantOrderNo, useCustomerCulture: useCustomerCulture).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Download Packing Slip.
     - GET /v2/orders/{merchantOrderNo}/packingslip
     - Generates the ChannelEngine packing slip for this order in PDF.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantOrderNo: (path) The unique order reference as used by the merchant. 
     - parameter useCustomerCulture: (query) Generate the invoice in the billing address&#39; country&#39;s language. (optional, default to false)
     - returns: RequestBuilder<URL> 
     */
    open class func orderPackingSlipWithRequestBuilder(merchantOrderNo: String, useCustomerCulture: Bool? = nil) -> RequestBuilder<URL> {
        var path = "/v2/orders/{merchantOrderNo}/packingslip"
        let merchantOrderNoPreEscape = "\(APIHelper.mapValueToPathItem(merchantOrderNo))"
        let merchantOrderNoPostEscape = merchantOrderNoPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{merchantOrderNo}", with: merchantOrderNoPostEscape, options: .literal, range: nil)
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "useCustomerCulture": useCustomerCulture?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<URL>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update Comment.
     
     - parameter merchantOrderCommentUpdateRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderUpdate(merchantOrderCommentUpdateRequest: MerchantOrderCommentUpdateRequest? = nil, apiResponseQueue: DispatchQueue = ChannelEngineMerchantApiClientAPI.apiResponseQueue, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        orderUpdateWithRequestBuilder(merchantOrderCommentUpdateRequest: merchantOrderCommentUpdateRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Comment.
     - PUT /v2/orders/comment
     - Update the merchant comment for an order. Both the ChannelEngine order id as the<br />merchant order number can be used for updating a comment.
     - API Key:
       - type: apiKey apikey (QUERY)
       - name: apiKey
     - parameter merchantOrderCommentUpdateRequest: (body)  (optional)
     - returns: RequestBuilder<ApiResponse> 
     */
    open class func orderUpdateWithRequestBuilder(merchantOrderCommentUpdateRequest: MerchantOrderCommentUpdateRequest? = nil) -> RequestBuilder<ApiResponse> {
        let path = "/v2/orders/comment"
        let URLString = ChannelEngineMerchantApiClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: merchantOrderCommentUpdateRequest)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ApiResponse>.Type = ChannelEngineMerchantApiClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
