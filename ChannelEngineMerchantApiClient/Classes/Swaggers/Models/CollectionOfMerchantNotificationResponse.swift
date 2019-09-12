//
// CollectionOfMerchantNotificationResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CollectionOfMerchantNotificationResponse: Codable {

    public var content: [MerchantNotificationResponse]?
    /** The number of items in the current response */
    public var count: Int?
    /** The total number of items */
    public var totalCount: Int?
    /** The number of items per page */
    public var itemsPerPage: Int?
    public var statusCode: Int?
    public var logId: Int?
    public var success: Bool?
    public var message: String?
    public var validationErrors: [String:[String]]?

    public init(content: [MerchantNotificationResponse]?, count: Int?, totalCount: Int?, itemsPerPage: Int?, statusCode: Int?, logId: Int?, success: Bool?, message: String?, validationErrors: [String:[String]]?) {
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

    public enum CodingKeys: String, CodingKey { 
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

