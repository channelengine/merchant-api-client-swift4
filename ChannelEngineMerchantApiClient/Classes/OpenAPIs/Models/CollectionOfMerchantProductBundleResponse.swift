//
// CollectionOfMerchantProductBundleResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CollectionOfMerchantProductBundleResponse: Codable { 


    public var content: [MerchantProductBundleResponse]?
    public var count: Int?
    public var totalCount: Int?
    public var itemsPerPage: Int?
    public var statusCode: Int?
    public var logId: Int?
    public var success: Bool?
    public var message: String?
    public var validationErrors: [String:[String]]?

    public init(content: [MerchantProductBundleResponse]? = nil, count: Int? = nil, totalCount: Int? = nil, itemsPerPage: Int? = nil, statusCode: Int? = nil, logId: Int? = nil, success: Bool? = nil, message: String? = nil, validationErrors: [String:[String]]? = nil) {
        self.content = content
        self.count = count
        self.totalCount = totalCount
        self.itemsPerPage = itemsPerPage
        self.statusCode = statusCode
        self.logId = logId
        self.success = success
        self.message = message
        self.validationErrors = validationErrors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case content = "Content"
        case count = "Count"
        case totalCount = "TotalCount"
        case itemsPerPage = "ItemsPerPage"
        case statusCode = "StatusCode"
        case logId = "LogId"
        case success = "Success"
        case message = "Message"
        case validationErrors = "ValidationErrors"
    }

}
