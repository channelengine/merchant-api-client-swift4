//
// ApiResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ApiResponse: Codable {

    public var statusCode: Int?
    public var success: Bool?
    public var message: String?
    public var validationErrors: [String:[String]]?


    public enum CodingKeys: String, CodingKey { 
        case statusCode = "StatusCode"
        case success = "Success"
        case message = "Message"
        case validationErrors = "ValidationErrors"
    }


}

