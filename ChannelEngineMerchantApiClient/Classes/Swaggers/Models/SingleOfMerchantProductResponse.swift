//
// SingleOfMerchantProductResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SingleOfMerchantProductResponse: Codable {

    public var content: MerchantProductResponse?
    public var statusCode: Int?
    public var logId: Int?
    public var success: Bool?
    public var message: String?
    public var validationErrors: [String:[String]]?

    public init(content: MerchantProductResponse?, statusCode: Int?, logId: Int?, success: Bool?, message: String?, validationErrors: [String:[String]]?) {
        self.content = content
        self.statusCode = statusCode
        self.logId = logId
        self.success = success
        self.message = message
        self.validationErrors = validationErrors
    }

    public enum CodingKeys: String, CodingKey { 
        case content = "Content"
        case statusCode = "StatusCode"
        case logId = "LogId"
        case success = "Success"
        case message = "Message"
        case validationErrors = "ValidationErrors"
    }


}

